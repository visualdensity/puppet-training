class ordering {
    include ordering::mysql
    include ordering::epel

    notify { 'This comes after MySQL':
        require => Class['ordering::mysql'],
    }
}
