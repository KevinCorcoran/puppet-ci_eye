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
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class ci_eye {

  notify { "CI-eye module initiated." : }

  anchor { 'ci_eye::begin': } ->
  class { '::ci_eye::install': } ->
  class { '::ci_eye::config': } ~>
  class { '::ci_eye::service': } ->
  anchor { 'ci_eye::end': }

  # This form of anchoring was suggested by the docs at ...
  #   https://docs.puppetlabs.com/guides/module_guides/bgtm.html
  # but it caused an error:
  #   "Could not find resource 'Class[Ci_eye::Install]' for relationship from 'Anchor[ci_eye::begin]'"

#  anchor { 'ci_eye::begin' : }
#  anchor { 'ci_eye::end' : }
#
#  Anchor['ci_eye::begin'] ->
#    Class['ci_eye::install'] ->
#    Class['ci_eye::config']  ->
#    Class['ci_eye::service'] ->
#  Anchor['ci_eye::end']
}
