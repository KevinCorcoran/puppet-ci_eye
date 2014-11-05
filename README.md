# ci_eye

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with ci_eye](#setup)
    * [What ci_eye affects](#what-ci_eye-affects)
    * [Beginning with ci_eye](#beginning-with-ci_eye)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Compatibility - OS compatibility, etc.](#compatibility)

## Overview

Manage a CI-eye server.  CI-eye is a Continuous Integration build radiator.

## Module Description

This module installs a CI-eye server.  CI-eye is distributed as a single .jar
file, so OS-level so there is no OS-level package/service, as such.  However,
this module uses the super-sweet 
[`java_service_wrapper` module](https://forge.puppetlabs.com/yguenane/java_service_wrapper)
to manage CI-eye as a service.

## Setup

### What ci_eye affects

#### Service
* `ci_eye`

#### Files
* The CI-eye installation directory (default: `/opt/ci-eye`)
* `/root/.ci-eye/views.txt` 

### Beginning with ci_eye

* `include ci_eye` 

## Usage

You can configure the views displayed by CI-eye by setting a class parameter on
the `ci_eye` class:
```puppet
class { 'ci_eye' :
    views = [{ name => "Puppet Labs",
               projects => [{ type => 'JENKINS',
                              url => 'https://jenkins.puppetlabs.com',
                              name => 'Clojure Projects' },
                            { type => 'JENKINS',
                              url => 'https://jenkins.puppetlabs.com',
                              name => 'PuppetDB' }] },
             { name => 'Your awesome view',
               projects => [{ type => 'JENKINS',
                              url => 'http://your-jenkins-server.com',
                              url => 'http://teamcity.codebetter.com',
                              name => 'Amazing Code' }] }]

}
```

### Images

This module does not (currently) manage any images displayed by CI-eye.
CI-eye has 
[good documentation on this](https://github.com/netmelody/ci-eye/wiki/Configuration#pictures).
I've considered adding support for this, but it's not clear to me that it's useful.

## Reference

#### Classes
* `ci_eye::params` - defines the default parameter values
* `ci_eye::init`
* `ci_eye::install` - ensures that the CI-eye .jar is available on disk.
* `ci_eye::config` - manages the CI-eye configuration
* `ci_eye::service` - sets up the service wrapper and manages the CI-eye service.

#### Functions
* `build_ci_eye_config` - constructs the contents of the `views.txt` file based
  on the `$views` class parameter.

## Compatibility

It seems to work fine on CentOS 6, and I've yet to test it on anything else.
