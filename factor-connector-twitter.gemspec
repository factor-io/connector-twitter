# encoding: UTF-8
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'factor-connector-twitter'
  s.version       = '0.0.0'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Andrew Akers']
  s.email         = ['andrewrdakers@gmail.com']
  s.homepage      = 'https://factor.io'
  s.summary       = 'Twitter Factor.io Connector'
  s.files         = Dir.glob('lib/factor/connector/*.rb')

  s.require_paths = ['lib']

  s.add_runtime_dependency 'factor-connector-api', '~> 0.0.13'
  s.add_runtime_dependency 'twitter', '~> 5.12.0'

  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.1'
  s.add_development_dependency 'rspec', '~> 3.1.0'
  s.add_development_dependency 'rake', '~> 10.3.2'
  s.add_development_dependency 'wrong', '~> 0.7.1'
end
