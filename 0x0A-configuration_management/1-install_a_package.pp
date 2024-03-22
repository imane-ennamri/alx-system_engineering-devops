file {'/tmp/school':
    ensure  => 'file',
    mode    => '0744',
    owner   => 'www-data',
    group   => 'www-data',
    content => 'I love Puppet',
}
exec { 'pkill':
    command => 'pkill killmenow',
    path    => ['/bin', '/usr/bin'],
    returns => [0, 1],
}
