class system::hashadmins {
    require mysql::server

    $mysql_defaults = {
        'ensure'               => 'present',
        'max_queries_per_hour' => 600,
    }

    $mysql_users = {
        'monica@localhost' => {},
        'brad@localhost'   => {},
        'luke@localhost'   => {},
        'ralph@localhost'  => {
          'ensure' => 'absent',
        },
        'zack@localhost'   => {
            'max_queries_per_hour' => 1200,
        },
    }

    #create_resources('mysql_user', $mysql_users, $mysql_defaults)

    # For more info on this, look for Advanced resources in Puppet docco
    $mysql_users.each | $name, $params | {
        mysql_user { $name:
          * => $params;
        default:
          * => $mysql_defaults;
        }
    }
}
