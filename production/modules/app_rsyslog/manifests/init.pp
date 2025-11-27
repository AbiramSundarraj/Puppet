class app_rsyslog (
    String $name = 'rsyslog',
) {
    package { $name:
        ensure => latest,
    }

    service { $name:
        subscribe => Package[$name],
        ensure => running,
        enable => true,
    }
}