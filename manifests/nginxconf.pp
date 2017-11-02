class wordpress::nginxconf($file,$source) {

file {$file:
  ensure  => directory,
  recurse => true,
  purge   => true,
  source  => $source,
}


}

