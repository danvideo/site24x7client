# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'site24x7client/version'

Gem::Specification.new do |spec|
  spec.name          = "site24x7client"
  spec.version       = Site24x7client::VERSION
  spec.authors       = ["Dan Schanler"]
  spec.email         = ["hello@danschanler.com"]
  spec.summary       = %q{Site24x7client API Wrapper}
  spec.description   = %q{Site24x7client API Wrapper}
  spec.homepage      = "https://github.com/danvideo/site24x7client"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  # Main dependencies
  spec.add_dependency 'virtus', '~> 1.0.3'
  spec.add_dependency "resource_kit", '~> 0.1.5'
  spec.add_dependency "kartograph", '~> 0.2.3'
  # spec.add_dependency "activesupport", '~> 5.0.2'
  spec.add_dependency "faraday", '~> 0.9.1'
  # Dev tools
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rb-readline"
  # FakeServe
  spec.add_development_dependency 'sinatra', '~> 1.4'
  spec.add_development_dependency 'webmock', '~> 1.18'
end
