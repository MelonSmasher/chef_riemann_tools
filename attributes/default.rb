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
default['riemann']['client']['services']['apache_status'] = {
    :tags => ['apache'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['dir_files_count'] = {
    :tags => ['dir_files_count'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['freeswitch'] = {
    :tags => ['freeswitch'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['memcached'] = {
    :tags => ['memcached'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['proc'] = {
    :tags => ['proc'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['dir_space'] = {
    :tags => ['dir_space'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['haproxy'] = {
    :tags => ['haproxy'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['net'] = {
    :tags => ['net'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['varnish'] = {
    :tags => ['varnish'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['cloudant'] = {
    :tags => ['cloudant'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['diskstats'] = {
    :tags => ['diskstats'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['health'] = {
    :tags => ['health'],
    :actions => %i[create enable start]
}
default['riemann']['client']['services']['nginx_status'] = {
    :tags => ['nginx_status'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['zookeeper'] = {
    :tags => ['zookeeper'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['consul'] = {
    :tags => ['consul'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['fd'] = {
    :tags => ['fd'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['kvminstance'] = {
    :tags => ['kvminstance'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['ntp'] = {
    :tags => ['ntp'],
    :actions => %i[create disable stop]
}
default['riemann']['client']['services']['portcheck'] = {
    :tags => ['portcheck'],
    :actions => %i[create disable stop]
}

# Control the standalone gems as services (https://docs.chef.io/resource_systemd_unit.html)
# By default nothing is controlled
default['riemann']['client']['services']['aws'] = {
    :tags => ['aws'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['elasticsearch'] = {
    :tags => ['elasticsearch'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['mesos'] = {
    :tags => ['mesos'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['rabbitmq'] = {
    :tags => ['rabbitmq'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['docker'] = {
    :tags => ['docker'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['marathon'] = {
    :tags => ['marathon'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['munin'] = {
    :tags => ['munin'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['riak'] = {
    :tags => ['riak'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['chronos'] = {
    :tags => ['chronos'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['mongodb'] = {
    :tags => ['mongodb'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['postgresql'] = {
    :tags => ['postgresql'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['cassandra'] = {
    :tags => ['cassandra'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['mysql'] = {
    :tags => ['mysql'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['hadoop'] = {
    :tags => ['hadoop'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['redis'] = {
    :tags => ['redis'],
    :actions => %i[nothing]
}
default['riemann']['client']['services']['resmon'] = {
    :tags => ['resmon'],
    :actions => %i[nothing]
}
