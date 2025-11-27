class app_rsyslog (
    name = rsyslog
) {
    package { '$name':
        ensure => installed,
    }
}