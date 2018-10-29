default['riemann']['client']['host'] = '127.0.0.1'
default['riemann']['client']['services']['apache_status'] = %i[disable stop]
default['riemann']['client']['services']['dir_files_count'] = %i[disable stop]
default['riemann']['client']['services']['freeswitch'] = %i[disable stop]
default['riemann']['client']['services']['memcached'] = %i[disable stop]
default['riemann']['client']['services']['proc'] = %i[disable stop]
default['riemann']['client']['services']['dir_space'] = %i[disable stop]
default['riemann']['client']['services']['haproxy'] = %i[disable stop]
default['riemann']['client']['services']['net'] = %i[disable stop]
default['riemann']['client']['services']['varnish'] = %i[disable stop]
default['riemann']['client']['services']['cloudant'] = %i[disable stop]
default['riemann']['client']['services']['diskstats'] = %i[disable stop]
default['riemann']['client']['services']['health'] = %i[enable start]
default['riemann']['client']['services']['nginx_status'] = %i[disable stop]
default['riemann']['client']['services']['zookeeper'] = %i[disable stop]
default['riemann']['client']['services']['consul'] = %i[disable stop]
default['riemann']['client']['services']['fd'] = %i[disable stop]
default['riemann']['client']['services']['kvminstance'] = %i[disable stop]
default['riemann']['client']['services']['ntp'] = %i[disable stop]
default['riemann']['client']['services']['portcheck'] = %i[disable stop]