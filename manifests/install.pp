class ci_eye::install inherits ci_eye {

  notify { "Installing CI-eye..." : }

  include java

  # TODO:
  # - gotta be some place better to put this file
  # - handle existing file, overwrite?  version upgrade?
  # - need to set mode / owner / group ... maybe use source_permissions?

  file { "/tmp/ci-eye.jar" : # TODO
    ensure => file,
    source => "puppet:///modules/ci_eye/ci-eye-0.4.0.jar",
  }
}