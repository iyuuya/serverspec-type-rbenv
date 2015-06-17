# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serverspec-type-rbenv/version'

Gem::Specification.new do |spec|
  spec.name          = "serverspec-type-rbenv"
  spec.version       = Serverspec::Type::Rbenv::VERSION
  spec.authors       = ["Uchio KONDO"]
  spec.email         = ["udzura@udzura.jp"]
  spec.description   = %q{Rbenv resource type extension for serverspec}
  spec.summary       = %q{Rbenv resource type extension for serverspec}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "serverspec", "~> 2.18"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
