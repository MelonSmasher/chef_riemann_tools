# Riemann host address
# Default is localhost/127.0.0.1
default['riemann']['client']['host'] = '127.0.0.1'

# Chose the stand alone gems to install (https://github.com/riemann/riemann-tools)
# By default none of these are installed
default['riemann']['client']['stand_alone']['aws'] = :nothing
default['riemann']['client']['stand_alone']['elasticsearch'] = :nothing
default['riemann']['client']['stand_alone']['mesos'] = :nothing
default['riemann']['client']['stand_alone']['rabbitmq'] = :nothing
default['riemann']['client']['stand_alone']['docker'] = :nothing
default['riemann']['client']['stand_alone']['marathon'] = :nothing
default['riemann']['client']['stand_alone']['munin'] = :nothing
default['riemann']['client']['stand_alone']['riak'] = :nothing
default['riemann']['client']['stand_alone']['chronos'] = :nothing
default['riemann']['client']['stand_alone']['mongodb'] = :nothing
default['riemann']['client']['stand_alone']['postgresql'] = :nothing
default['riemann']['client']['stand_alone']['cassandra'] = :nothing
default['riemann']['client']['stand_alone']['mysql'] = :nothing
default['riemann']['client']['stand_alone']['hadoop'] = :nothing
default['riemann']['client']['stand_alone']['redis'] = :nothing
default['riemann']['client']['stand_alone']['resmon'] = :nothing

# Control the core tools as services (https://docs.chef.io/resource_systemd_unit.html)
# By default only the health service is enabled
default['riemann']['client']['services']['apache_status'] = %i[create disable stop]
default['riemann']['client']['services']['dir_files_count'] = %i[create disable stop]
default['riemann']['client']['services']['freeswitch'] = %i[create disable stop]
default['riemann']['client']['services']['memcached'] = %i[create disable stop]
default['riemann']['client']['services']['proc'] = %i[create disable stop]
default['riemann']['client']['services']['dir_space'] = %i[create disable stop]
default['riemann']['client']['services']['haproxy'] = %i[create disable stop]
default['riemann']['client']['services']['net'] = %i[create disable stop]
default['riemann']['client']['services']['varnish'] = %i[create disable stop]
default['riemann']['client']['services']['cloudant'] = %i[create disable stop]
default['riemann']['client']['services']['diskstats'] = %i[create disable stop]
default['riemann']['client']['services']['health'] = %i[create enable start]
default['riemann']['client']['services']['nginx_status'] = %i[create disable stop]
default['riemann']['client']['services']['zookeeper'] = %i[create disable stop]
default['riemann']['client']['services']['consul'] = %i[create disable stop]
default['riemann']['client']['services']['fd'] = %i[create disable stop]
default['riemann']['client']['services']['kvminstance'] = %i[create disable stop]
default['riemann']['client']['services']['ntp'] = %i[create disable stop]
default['riemann']['client']['services']['portcheck'] = %i[create disable stop]

# Control the standalone gems as services (https://docs.chef.io/resource_systemd_unit.html)
# By default nothing is controlled
default['riemann']['client']['services']['aws'] = %i[nothing]
default['riemann']['client']['services']['elasticsearch'] = %i[nothing]
default['riemann']['client']['services']['mesos'] = %i[nothing]
default['riemann']['client']['services']['rabbitmq'] = %i[nothing]
default['riemann']['client']['services']['docker'] = %i[nothing]
default['riemann']['client']['services']['marathon'] = %i[nothing]
default['riemann']['client']['services']['munin'] = %i[nothing]
default['riemann']['client']['services']['riak'] = %i[nothing]
default['riemann']['client']['services']['chronos'] = %i[nothing]
default['riemann']['client']['services']['mongodb'] = %i[nothing]
default['riemann']['client']['services']['postgresql'] = %i[nothing]
default['riemann']['client']['services']['cassandra'] = %i[nothing]
default['riemann']['client']['services']['mysql'] = %i[nothing]
default['riemann']['client']['services']['hadoop'] = %i[nothing]
default['riemann']['client']['services']['redis'] = %i[nothing]
default['riemann']['client']['services']['resmon'] = %i[nothing]
