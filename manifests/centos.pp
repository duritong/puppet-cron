# cron on centos
class cron::centos inherits cron::base {
  $cron_package = $::lsbmajdistrelease ? {
    5       => 'vixie-cron',
    default => 'cronie'
  }

  Package['cron'] {
    name => $cron_package
  }
  package{'crontabs':
    ensure  => 'present',
    require => Package['cron'],
    before  => Service['cron'],
  }
  Service['cron'] {
    name => 'crond'
  }
}
