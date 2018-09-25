class base {
  # if ($role != 'unassigned') {
  #   include monitoring
  # }

  monitoring::host { $::hostname:
    group => "${role}_${datacenter}"
  }

  monitoring::service { 'ssh':
    description   => 'SSH',
    check_command => 'check_ssh',
  }
}
