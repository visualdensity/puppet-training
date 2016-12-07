class review (String[1,10] $user='review') 
{
    $sample = 'True' #this is a string
    $sample_boolean = Boolean.new($sample) #how you cast it explicitly to Boolean

    user { $user:
         name             => $user,
         ensure           => 'present',
         shell            => '/bin/csh',
     }

    file { '/etc/shells':
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => 'puppet:///modules/review/shells',
    }

    file { '/etc/motd':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => epp('review/motd.epp'),
    }
}

