module Puppet::Parser::Functions
  newfunction(:build_ci_eye_config, :type => :rvalue) do |args|
    views = args[0]
    result = []
    views.each { |view|
      result << "[#{view["name"]}]"
      view["projects"].each { |project|
        result << "#{project["type"]}|#{project["url"]}|#{project["name"]}"
      }
      result << ""  # empty line after each view
    }
    result.join "\n"
  end
end