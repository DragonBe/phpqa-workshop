class apache {

    package { ["apache2", "apache2-mpm-prefork", "libapache2-mod-php5"]:
        ensure => present,
        require => Class["php"]
    }

    service { "apache2":
        ensure => running,
        enable => true,
        require => Package["apache2"]
    }

    # Installation of Apache modules
    apache::modules {
        [
            "env",
            "headers",
            "deflate",
            "expires",
            "rewrite"
        ]
    :}

    # Configure Virtual Hosts
    apache::vhosts { "default":
        priority => "000",
        serveraliases => "phpqa.local",
        document_root => "/vagrant/build"
    }

    file { "/vagrant/build/info.php":
        ensure => file,
        content => "<?php phpinfo();",
        require => File["/etc/apache2/sites-available/000-default.conf"]
    }

    file { '/etc/apache2/conf-available/srv.conf':
        ensure => file,
        source => 'puppet:///modules/apache/srv.conf',
        require => Package['apache2']
    }

    exec {'Enable srv config':
        command => "/usr/sbin/a2enconf srv.conf",
        require => File["/etc/apache2/conf-available/srv.conf"],
        notify => Service["apache2"]
    }
}