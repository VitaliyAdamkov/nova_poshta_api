lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nova_poshta_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'nova_poshta_api'
  spec.version       = NovaPoshtaApi::VERSION
  spec.authors       = ['woodcrust', 'VitaliyAdamkov']
  spec.email         = ['emptystamp@gmail.com', 'adamkov@tex.ua']

  spec.summary       = 'This is gem nova poshta (Новая почта, Нова пошта)'
  spec.description   = 'Gem API NOVA POSHTA(Новая почта, Нова пошта) for all ruby projects'
  spec.homepage      = 'https://github.com/VitaliyAdamkov/nova_poshta_api'
  spec.license       = 'MIT'

  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  spec.files         = Dir['lib/**/*']
  spec.bindir        = 'bin'
  spec.executables   = ['nova_poshta_api']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'nokogiri', '>= 1.6.8.1', '< 1.9'

  spec.add_development_dependency 'bundler', '>= 1.2', '< 1.17'
  spec.add_development_dependency 'rake', '>= 10.0', '< 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rubocop'
end
