#
# Cookbook:: riemann_tools
# Recipe:: default
#
# MIT
#

if %w(ubuntu).include?(node['platform'])

  # Grab the riemann host
  riemann_host = node['riemann']['client']['host']
  # Grab the services
  services = node['riemann']['client']['services']
  # Standalone Gems
  standalone_gems = node['riemann']['client']['stand_alone']

  # Install Ruby Dev
  package 'ruby-dev' do
    action :install
  end

  # Install the riemann client and tools gems
  %w(riemann-client riemann-tools).each do |gem|
    gem_package gem do
      action :install
      ignore_failure true
      gem_binary('/usr/bin/gem')
      options('--no-rdoc --no-ri')
    end
  end

  # Manage any standalone gems
  standalone_gems.each do |gem, action|
    gem_package "riemann-#{gem.gsub('_', '-')}" do
      action action.to_s.to_sym
      ignore_failure true
      gem_binary('/usr/bin/gem')
      options('--no-rdoc --no-ri')
    end
  end

  # Install the riemann client and tools gems

  # Loop over each service
  services.each do |service, options|

    # Format local vars
    actions = []
    tags = ''
    service_name = "riemann-#{service.gsub('_', '-')}"

    # Build the actions for this service
    options[:actions].each do |a|
      actions << a.to_s.to_sym
    end

    # Build the tags for this service
    options[:tags].each do |t|
      tags = "#{tags} --tag \"#{t}\""
    end

    # Create the service unit
    systemd_unit "#{service_name}.service" do
      content <<-EOU.gsub(/^\s+/, '')
        [Unit]
        Description=Riemann #{service} Service - Created by Chef
        After=network.target

        [Service]
        ExecStart=/usr/local/bin/#{service_name} --host #{riemann_host}#{tags}
        PidFile=/var/run/#{service_name}.pid
        Restart=on-failure

        [Install]
        Alias=chef-#{service_name}.service
      EOU
      action actions
    end

  end

else
  log 'riemann_tools' do
    message "The platform : #{node['platform']} is not supported at this time."
    level :warn
  end
end