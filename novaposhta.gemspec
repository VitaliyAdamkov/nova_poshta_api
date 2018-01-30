lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novaposhta/version'

Gem::Specification.new do |spec|
  spec.name          = 'novaposhta'
  spec.version       = Novaposhta::VERSION
  spec.authors       = ['woodcrust']
  spec.email         = ['emptystamp@gmail.com']

  spec.summary       = 'This is gem nova poshta (Новая почта, Нова пошта)'
  spec.description   = 'Gem API NOVA POSHTA(Новая почта, Нова пошта) for all ruby projects'
  spec.homepage      = 'https://github.com/woodcrust/novaposhta'
  spec.license       = 'MIT'

  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  spec.files         = Dir['lib/**/*']
  spec.bindir        = 'bin'
  spec.executables   = ['novaposhta']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'nokogiri', '>= 1.6.8.1', '< 1.9'

  spec.add_development_dependency 'bundler', '>= 1.2', '< 1.17'
  spec.add_development_dependency 'rake', '>= 10.0', '< 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rubocop'
end
