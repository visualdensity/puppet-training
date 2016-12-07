class files {

    $cron_files = ['/etc/cron.allow', '/etc/cron.deny']

    file { $cron_files:
        ensure => present,
        owner  => root,
        group  => root
    }

    file_line {'Allow root to cron':
        line   => 'root',
        path   => '/etc/cron.allow',
        ensure => present,
        match  => '^root',
    }

    file_line {'Default deny all to cron':
        line   => '*',
        path   => '/etc/cron.deny',
        ensure => present,
        match  => '^*',
    }

    $motd = '/etc/motd'

    concat { $motd:
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
    }

    concat::fragment { 'Hello header':
      target  => $motd,
      content => "Hello there! Welcome to $::fqdn\n\n",
      order   => '01',
    }

    concat::fragment { 'Some gibberish':
      target  => $motd,
      content => epp('files/motd_content'),
      order   => '05',
    }

    concat::fragment { 'Footer':
      target  => $motd,
      content => "\n\nThis is a generated motd by Puppet.",
      order   => '10',
    }
}
