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
6. [TODO](#todo)

## Overview

Manage a CI-eye server.  CI-eye is a Continuous Integration build radiator.

## Module Description

If applicable, this section should have a brief description of the technology
the module integrates with and what that integration enables. This section
should answer the questions: "What does this module *do*?" and "Why would I use
it?"

If your module has a range of functionality (installation, configuration,
management, etc.) this is the time to mention it.

## Setup

### What ci_eye affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Beginning with ci_eye

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Compatibility

Who knows?

## TODO

* manage CI-eye config, ensure service refresh on config change - only need to refresh on certain ones!  "Unless otherwise mentioned, updates to these files will not require the CI-Eye server to be restarted"
* doc clean up (see also init.pp)
* release
* do something around stopping the service?
* look into utilizing additional params on https://github.com/Spredzy/puppet-java-service-wrapper/blob/master/manifests/service.pp
* (spec) tests?
