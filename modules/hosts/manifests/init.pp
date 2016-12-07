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

    @@host { 'wicked.puppetlabs.vm':
      host_aliases => ['wicked'],
      ip           => '10.10.10.130',
      tag          => 'classroom',
    }

    Host <| tag == 'classroom' |>
}
