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

  # Loop over each service
  services.each do |service, act|

    # Format local vars
    actions = [:create]
    service_name = "riemann-#{service.gsub('_', '-')}"

    # Build the actions for this service
    act.each do |a|
      actions << a.to_s
    end

    # Create the service unit
    systemd_unit "#{service_name}.service" do
      content <<-EOU.gsub(/^\s+/, '')
        [Unit]
        Description=Riemann #{service} Service - Created by Chef
        After=network.target

        [Service]
        ExecStart=/usr/local/bin/#{service_name} --host #{riemann_host}
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