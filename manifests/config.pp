class ci_eye::config inherits ci_eye {

  file { '/root/.ci-eye/views.txt' :
    ensure => present,
    content => build_ci_eye_config($views),
  }
}