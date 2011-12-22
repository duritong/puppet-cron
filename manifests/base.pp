class cron::base {
    package{'cron':
        ensure => present,
    }
    service{'cron':
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package['vixie-cron'],
    }
}