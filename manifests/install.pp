class ci_eye::install inherits ci_eye {

  # Ensure that java is installed
  include java

  file { "${install_dir}" :
    ensure  => directory,
    owner   => 0,
    group   => 0,
    mode    => '0755',
    recurse => true,
  } ~>
  file { "${install_dir}/${jar_name}" :
    ensure => file,
    source => "puppet:///modules/ci_eye/${jar_name}",
  }
}