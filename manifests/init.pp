class base {
  monitoring::host { $::hostname:
    group => "${role}_${datacenter}"
  }

  monitoring::service { 'ssh':
    description   => 'SSH',
    check_command => 'check_ssh',
  }

  include profile::puppet_agent
}
