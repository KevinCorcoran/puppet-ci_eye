class ci_eye::params {
  $port         = 55555
  $install_dir  = "/opt/ci-eye"
  $jar_name     = "ci-eye-0.4.0.jar"

  # CI-eye config
  $views        = [{ name => "Puppet Labs",
                     projects => [{ type => 'JENKINS',
                                    url => 'https://jenkins.puppetlabs.com',
                                    name => 'Clojure Projects' },
                                  { type => 'JENKINS',
                                    url => 'https://jenkins.puppetlabs.com',
                                    name => 'PuppetDB' }] },
                   { name => 'Public Live',
                     projects => [{ type => 'JENKINS',
                                    url => 'http://ci.jenkins-ci.org',
                                    name => 'Jenkins core' },
                                  { type => 'HUDSON',
                                    url => 'http://hudson.magnolia-cms.com',
                                    name => 'Main (trunk, branches, and alternative builds)' },
                                  { type => 'TEAMCITY',
                                    url => 'http://teamcity.jetbrains.com',
                                    name => 'Teamcity' },
                                  { type => 'TEAMCITY',
                                    url => 'http://teamcity.codebetter.com',
                                    name => 'CI-Eye' }] },
                   { name => 'CI-Eye Demo',
                     projects => [{ type => 'DEMO',
                                    url => '',
                                    name => 'Product_Alpha' },
                                  { type => 'DEMO',
                                    url => '',
                                    name => 'Product_Zappa' }] }]
}