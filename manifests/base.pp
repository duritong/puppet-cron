class cron::base {

    package { 'cron':
        ensure => present,
        alias => 'cron',
    }

    service { 'cron':
        ensure => running,
        enable => true,
        hasstatus => false,
        require => Package['cron'],
        alias => 'cron',
    }

}
