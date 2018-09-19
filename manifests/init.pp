class base {
  package { 'apt-transport-https':
    ensure => 'present'
  }
}