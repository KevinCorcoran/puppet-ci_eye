class ci_eye::install inherits ci_eye {

  notify { "Installing CI-eye..." : }

  # TODO handle existing file, overwrite?  version upgrade?
  file { "/tmp/ci-eye.jar" : # TODO gotta be some place better to put this file
    ensure => file,
    source => "puppet:///modules/ci_eye/ci-eye-0.4.0.jar",
    # TODO probably need to set mode / owner / group ... maybe use source_permissions
  }
}