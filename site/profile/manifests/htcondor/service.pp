# class to control the HTCondor systemctl service
class profile::htcondor::service {
  service { 'condor':
    ensure => running,
    enable => true,
  }

  exec { '/usr/sbin/condor_reconfig':
    refreshonly => true,
    path        => '/usr/bin:/usr/sbin:/bin',
    unless      => 'test -f /etc/condor/config.d/19_remote_submit.config',
    require     => Service['condor'],
  }
}