# == Class: ci_eye
#
# Entry point into the CI-eye module.
#
# === Parameters
#
# [*port*]
#   The port on which the CI-eye server will listen.  Defaults to 55555.
#
# [*install_dir*]
#   The directory to which CI-eye will be installed.  Defaults to `/opt/ci-eye`.
#
# [*views*]
#   Configuration defining the views/projects to be displayed by CI-eye.
#   See the README for more documentation.
#
# === Authors
#
# Kevin Corcoran <kevin.corcoran@puppetlabs.com>
#
class ci_eye (
  $port         = $ci_eye::params::port,
  $install_dir  = $ci_eye::params::install_dir,
  $views        = $ci_eye::params::views,
) inherits ci_eye::params {
  anchor { 'ci_eye::begin': } ->
  class { '::ci_eye::install': } ->
  class { '::ci_eye::config': } ~>
  class { '::ci_eye::service': } ->
  anchor { 'ci_eye::end': }
}
