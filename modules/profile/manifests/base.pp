class profile::base {

  notify { "Hello ${fqdn}": }

  notify { hiera( message ): }
}
