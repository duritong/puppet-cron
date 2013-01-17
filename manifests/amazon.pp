# cron on amazon linux
class cron::amazon inherits cron::centos {
  $cron_package = 'cronie'

  Package['cron'] {
    name => $cron_package
  }
}
