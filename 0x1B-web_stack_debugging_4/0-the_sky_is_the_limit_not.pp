#!/usr/bin/puppet
# Puppet manifest to optimize Nginx and reduce failed requests

class optimize_nginx {
    exec { 'increase-nginx-limit':
        command => '/bin/echo "worker_rlimit_nofile=65535;" >> /etc/nginx/nginx.conf && sed -i "/http {/a \ \ \ \ worker_connections 65535;" /etc/nginx/nginx.conf && service nginx restart',
        path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
        onlyif  => '/bin/grep -q -E "worker_connections [0-9]+;" /etc/nginx/nginx.conf',
    }
}

include optimize_nginx

