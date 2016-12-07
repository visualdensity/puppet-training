class ordering::mysql {
    class { 'mysql::server':
        root_password => 'jbasfuah4w8ur08ANDKJNSDA',
    }

    class { 'mysql::bindings':
        perl_enable => true,
        php_enable => true,
    }

    contain mysql::server
    contain mysql::bindings
}
