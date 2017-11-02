  class { "wordpress::nginx":
    cache   => $cache,
    require => Exec["apt-get update"]
  }

  class { "wordpress::php":
    require => Exec["apt-get update"]
  }


