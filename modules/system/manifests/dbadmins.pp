class system::dbadmins {
  require mysql::server

  Mysql_user  {
    ensure => present,
    max_queries_per_hour => 600,
  }

  mysql_user { ['monica@localhost', 'brad@localhost', 'luke@localhost']: } 

  mysql_user { 'ralph@localhost':
    ensure => absent,
  }

  mysql_user { 'zack@localhost':
    max_queries_per_hour => 1200,
  }

  # Looped Alternative
  #$standard_users = ['monica', 'brad', 'luke']
  #$standard_users.each |$user| {
  #  mysql_user { "${user}@localhost": }
  #}
}
