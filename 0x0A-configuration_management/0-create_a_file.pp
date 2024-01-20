#creates a new file and sets permissions
file { '/tmp/school':
ensure  => present,
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
