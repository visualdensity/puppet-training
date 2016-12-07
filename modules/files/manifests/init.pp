class files {

    $cron_files = ['/etc/cron.allow', '/etc/cron.deny']

    $cron_files.each | $file | {
        file { $file:
            ensure => present,
            owner => root,
            group => root
        }
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

}
