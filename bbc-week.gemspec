require_relative 'lib/bbc/week/version'

Gem::Specification.new do |spec|
  spec.name          = "bbc-week"
  spec.version       = BBC::Week::VERSION
  spec.authors       = ["British Broadcasting Corporation"]

  spec.summary       = %q{Extension to the Date class to calculate BBC week dates}
  spec.homepage      = "https://github.com/bbc/ruby-bbc-week"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bbc/ruby-bbc-week.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
