class system::iteradmins {
    require mysql::server

    $mysql_defaults = {
        'ensure'               => 'present',
        'max_queries_per_hour' => 600,
    }

    $users = {
        'monica'   => {},
        'brad'     => {},
        'luke'     => {},
        'ralph'    => {
            'mysql'  => {
              'ensure' => 'absent'
            }
        },
        'zack'   => {
            'mysql'  => {
              'max_queries_per_hour' => 1200,
            }
        },
    }

    $users.each | $name, $params | {

        if has_key($params, 'mysql') {
          $mysql_params = $params['mysql']
        } else {
          $mysql_params = {}
        }

        user { $name:
          ensure => present
        }

        mysql_user { "$name@localhost":
          * => $mysql_params;
        default:
          * => $mysql_defaults;
        }
    }
}
