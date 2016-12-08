class profile::base {

  notify { "Hello ${fqdn}": }

  notify { hiera( 'message' ): }
  notify { hiera_array( 'message' ): }
}
