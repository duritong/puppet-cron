class cron::centos inherits cron::base {

    Package['cron'] {
        name => 'vixie-cron',
    }

    Service['cron'] {
        name => 'crond',
        hasstatus => true,
    }

}
