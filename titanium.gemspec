# frozen_string_literal: true

require_relative "lib/titanium/version"

Gem::Specification.new do |spec|
  spec.name = "titanium"
  spec.version = Titanium::VERSION
  spec.authors = ["Adrian Gonzalez"]
  spec.email = ["adriangonzalezsanchez1996@gmail.com"]

  spec.summary = "Fast, robust, typed and Developer Friendly web framework for ruby"
  spec.description = "
  Ruby is jealous about FastAPI. Be no more. titanium is a Rack Compatible Web Framework for ruby
  based on RBS Type Annotations. At this moment maybe RBS is a little cumbersome, but the value it
  provides is priceless. Furthermore, titanium aims to be a fully async mode framework for Ruby,
  from scratch. So lets give it a try, shall we?.
"
  spec.homepage = "https://github.com/adriangs1996/titanium"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/adriangs1996/titanium"
  spec.metadata["changelog_uri"] = "https://github.com/adriangs1996/titanium/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features|sig)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "rack", "~> 3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
