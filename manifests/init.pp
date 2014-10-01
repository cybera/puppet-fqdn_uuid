class fqdn_uuid (
  $package_ensure = 'present',
) {
  include fqdn_uuid::params

  package { 'uuid':
    name   => $::fqdn_uuid::params::package,
    ensure => $package_ensure,
  }
}
