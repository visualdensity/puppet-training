class hosts {
    resources { 'host':
        purge => true
    }

    Host {
      ensure => 'present',
    }

    host { 'localhost':
      host_aliases => ['localhost.localdomain', 'localhost6', 'localhost6.localdomain6'],
      ip           => '::1',
    }

    host { 'master.puppetlabs.vm':
      host_aliases => ['master'],
      ip           => '10.10.10.120',
    }

    host { 'student.puppetlabs.vm':
      host_aliases => ['student', 'localhost', 'localhost.localdomain', 'localhost4'],
      ip           => '127.0.0.1',
    }

    #Here you export details to Puppet Master along with others
    @@host { $::fqdn:
      host_aliases => [$::hostname],
      ip           => $::ipaddress,
      tag          => ['classroom'],
    }

    #Here, for all other details collected in Puppet Master, realize each as a host resource
    Host <<| tag == 'classroom' |>>
}
