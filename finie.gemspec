# frozen_string_literal: true

require_relative "lib/finie/version"

Gem::Specification.new do |spec|
  spec.name          = "finie"
  spec.version       = Finie::VERSION
  spec.authors       = ["Alex Piechowski"]
  spec.email         = ["alex@piechowski.io"]

  spec.summary       = "Simple CLI that connects to Twilio to give command notifications"
  # spec.description   = "TODO: Write a longer description or delete this line."
  spec.homepage      = "https://github.com/grepsedawk/finie"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/grepsedawk/finie"
  spec.metadata["changelog_uri"] = "https://github.com/grepsedawk/fini/CHANGELOG.mde"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
