class php {

    exec { "add-repo-ppa-php5":
        command => "/usr/bin/add-apt-repository ppa:ondrej/php5",
        require => Package["python-software-properties"]
    }

    exec { "apt updater":
        command => "/usr/bin/apt-get update",
        require => Exec["add-repo-ppa-php5"]
    }

    php::phpmods {
        [
            "php5",
            "php5-cli",
            "php5-common",
            "php5-curl",
            "php5-dev",
            "php5-gd",
            "php5-geoip",
            "php5-imagick",
            "php5-intl",
            "php5-mcrypt",
            "php5-memcache",
            "php5-memcached",
            "php5-mysql",
            "php5-sqlite",
            "php5-svn",
            "php5-tidy",
            "php5-xdebug"
        ]:
    }

    php::config { "xdebug.ini":
        config => "20-xdebug.ini",
        path => "/etc/php5/cli/conf.d"
    }

    php::geoip { "data": }

    # Fix for PHP sessions
    file { "/var/lib/php5/sessions":
        ensure => "directory",
        owner => "www-data",
        group => "www-data",
        mode => 0644,
        require => Package["php5"]
    }
}
