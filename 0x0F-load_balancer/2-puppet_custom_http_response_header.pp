#!/usr/bin/env bash
# This script configures a brand new Ubuntu machine to create a custom HTTP header response with Puppet.
# The custom HTTP header name is X-Served-By, and its value is the hostname of the server Nginx is running on.

class { 'nginx':
  package_source => 'nginx/stable',
}

nginx::resource::vhost { 'default':
  ensure   => present,
  www_root => '/var/www/html',
  proxy    => 'http://127.0.0.1:80',
}

nginx::resource::location { '/':
  vhost        => 'default',
  ensure       => present,
  location     => '/',
  location_cfg => {
    'add_header' => ['X-Served-By $hostname'],
  },
}

