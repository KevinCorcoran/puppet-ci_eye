class ci_eye::service inherits ci_eye {


  notify { "Running CI-eye..." : }

  # TODO ...
  # - java dep
  # - how do we stop it?
  # - CI eye .jar file path should be a var, perhaps even come from config?
  # - notify something like 'CI eye is now running at URL'

  $port = 55555 # TODO should come from config

  java_service_wrapper::service{ 'ci_eye':
    wrapper_mainclass  => 'WrapperJarApp',
    wrapper_classpath  => ['/usr/local/lib/wrapper.jar', '/tmp/ci-eye.jar'],
    wrapper_parameter  => [' /tmp/ci-eye.jar', $port]
  }

  notify { "CI-eye started successfully." : }
}