class review (String $user='review') 
{
  user { 'set user':
     name             => $user,
     ensure           => 'present',
     shell            => '/bin/csh'
   }

  file { '/etc/shells':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/review/shells'
  }

  file { '/etc/motd':
      ensure  => file,
      backup  => false,
      content => epp('motd.epp')
  }
}

