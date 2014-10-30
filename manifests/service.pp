class ci_eye::service inherits ci_eye {

  # TODO ...
  # - not actually a service
  # - java dep
  # - how do we stop it?

  notify { "Running CI-eye..." : }

  # TODO PORT needs to be configurable
  # TODO doesn't return ... um ...
  exec { "java -jar /tmp/ci-eye.jar PORT" :
    # let's try to make puppet find java on the $PATH
    path => $path,
  }

  notify { "CI-eye started successfully." : }
}