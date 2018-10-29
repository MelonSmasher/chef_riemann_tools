name 'riemann_tools'
maintainer 'Alex Markessinis'
maintainer_email 'markea125@gmail.com'
license 'MIT'
description 'Allows you to configure the riemann tools gem as individual services.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version ">= 12.11" if respond_to?(:chef_version)
version '0.1.2'
%w( ubuntu ).each do |os|
  supports os
end

issues_url 'https://github.com/melonsmasher/chef_riemann_tools/issues' if respond_to?(:issues_url)
source_url 'https://github.com/melonsmasher/chef_riemann_tools' if respond_to?(:source_url)
