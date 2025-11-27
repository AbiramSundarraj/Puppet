class app_rsyslog (
    String $pkg_name = 'rsyslog',
) {
    package { $pkg_name:
        ensure => latest,
    }

    service { $pkg_name:
        subscribe => Package[$pkg_name],
        ensure => running,
        enable => true,
    }
}