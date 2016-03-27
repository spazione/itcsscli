# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itcss_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "itcss_cli"
  spec.version       = ItcssCli::VERSION
  spec.authors       = ["Kande Bonfim"]
  spec.email         = ["kandebonfim@gmail.com"]

  spec.summary       = %q{Manage you CSS with ITCSS from command line.}
  spec.homepage      = "https://github.com/kandebonfim/itcss_cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["itcss"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end