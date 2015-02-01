class systemtools {

    $system_tools = [
        "curl",
        "subversion",
        "git",
        "lynx",
        "wget",
        "zip",
        "unzip",
        "python-software-properties",
        "graphviz"
    ]
    package { $system_tools:
        ensure => "installed"
    }
    package { "memcached":
        ensure => latest
    }
    service { "memcached":
        ensure => running,
        enable => true,
        require => Package["memcached"]
    }
}