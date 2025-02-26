#!/usr/bin/env puppet

# Ensure Apache is installed
package { 'apache2':
  ensure => installed,
}

# Ensure PHP module is installed
package { 'libapache2-mod-php':
  ensure => installed,
}

# Ensure Apache service is running
service { 'apache2':
  ensure    => running,
  enable    => true,
  require   => [Package['apache2'], Package['libapache2-mod-php']],
}

# Ensure correct permissions on /var/www/html
file { '/var/www/html':
  ensure  => directory,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0755',
  recurse => true,
}

