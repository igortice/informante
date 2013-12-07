# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'informante/version'

Gem::Specification.new do |spec|
  spec.name          = "informante"
  spec.version       = Informante::VERSION
  spec.authors       = ["igortice"]
  spec.email         = ["igortice@gmail.com"]
  spec.summary       = %q{Simple gem rails for configurations of global inforamations}
  spec.description   = %q{This gem is to provide a simple way of storing information in one place and get this information anywhere in a Rails application.}
  spec.homepage      = "https://github.com/igortice/informante"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
