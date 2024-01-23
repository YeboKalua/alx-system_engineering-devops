#!/usr/bin/env bash
#puppet script for configuring server
file { '/etc/ssh/ssh_config':
  ensure => present,
}
file_line { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
  match => '^#PasswordAuthentic',
}
file_line { 'Declare Identity File':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
  match => '^#IdentityFile',
}
