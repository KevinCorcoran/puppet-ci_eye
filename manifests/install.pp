class ci_eye::install inherits ci_eye {

  # Ensure that java is installed
  include java

  file { "${install_dir}/${jar_name}" :
    ensure => file,
    source => "puppet:///modules/ci_eye/${jar_name}",
  }
}