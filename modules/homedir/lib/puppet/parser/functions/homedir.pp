function homedir::user (
  String $user,
)
{
    $user ? {
      root    => '/root',
      default => "home/${user}"
    }
}
