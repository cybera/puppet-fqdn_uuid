#
class fqdn_uuid::params {
  case $::osfamily {
    'Debian': {
      $package = 'uuid'
    }
  }
}
