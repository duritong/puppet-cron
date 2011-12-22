class cron::centos inherits cron::base {
  Package['cron'] {
    name => $lsbmajdistrelease ? {
      5 => 'vixie-cron',
      default => 'cronie'
    }
  }
  package{'crontabs':
    ensure => 'present',
    require => Package['cron'],
    before => Service['cron'],    
  }
  Service['cron'] {
    name => 'crond'
  }
}