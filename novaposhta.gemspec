# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novaposhta/version'

Gem::Specification.new do |spec|
  spec.name          = "novaposhta"
  spec.version       = Novaposhta::VERSION
  spec.authors       = ["woodcrust"]
  spec.email         = ["emptystamp@gmail.com"]

  spec.summary       = %q{This is gem nova poshta (Новая почта, Нова пошта)}
  spec.description   = %q{Gem API NOVA POSHTA(Новая почта, Нова пошта) for all ruby projects}
  spec.homepage      = "https://github.com/woodcrust/novaposhta"
  spec.license       = "MIT"
  
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  spec.files         = Dir['lib/**/*']
  spec.bindir        = "bin"
  spec.executables   = ["novaposhta"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "activesupport", "~> 5.0.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'byebug'
end
