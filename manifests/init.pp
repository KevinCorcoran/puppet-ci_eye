# == Class: ci_eye
#
# Full description of class ci_eye here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'ci_eye':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <kevin.corcoran@puppetlabs.com>
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
