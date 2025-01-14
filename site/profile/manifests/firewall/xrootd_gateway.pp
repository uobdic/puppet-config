# Firewall configuration for a DMLite Gateway
class profile::firewall::xrootd_gateway {
  firewall { '940 allow xrootd':
    state => 'NEW',
    proto => 'tcp',
    dport => '1094',
    jump  => 'accept',
  }
  firewall { '941 allow xrootd':
    state => 'NEW',
    proto => 'tcp',
    dport => '1194',
    jump  => 'accept',
  }
  # IPv6
  firewall { '960 allow xrootd':
    state    => 'NEW',
    proto    => 'tcp',
    dport    => '1094',
    jump     => 'accept',
    protocol => 'ip6tables',
  }
  firewall { '961 allow xrootd':
    state    => 'NEW',
    proto    => 'tcp',
    dport    => '1194',
    jump     => 'accept',
    protocol => 'ip6tables',
  }
}
