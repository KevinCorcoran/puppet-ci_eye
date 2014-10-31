class ci_eye::service inherits ci_eye {
  $jar_path = "${install_dir}/${jar_name}"

  java_service_wrapper::service{ 'ci_eye':
    wrapper_mainclass  => 'WrapperJarApp',
    wrapper_classpath  => ['/usr/local/lib/wrapper.jar', $jar_path],
    wrapper_parameter  => [$jar_path, $port]
  }
}