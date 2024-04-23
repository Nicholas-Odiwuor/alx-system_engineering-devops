#!/usr/bin/env bash
# Puppet manifest to install and configure Nginx web server

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is enabled and running
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx'],
}

# Configure Nginx to listen on port 80 and serve "Hello World!" at the root
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location / {
        return 301 https://\$host\$request_uri;
    }

    location /redirect_me {
        return 301 https://www.example.com/;
    }
}
",
  notify  => Service['nginx'],
}

# Create HTML file with "Hello World!" content
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  notify  => Service['nginx'],
}

