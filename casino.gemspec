# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'casino/version'

Gem::Specification.new do |s|
  s.name        = 'casino'
  s.version     = CASino::VERSION
  s.authors     = ['Nils Caspar', 'Raffael Schmid', 'Samuel Sieg']
  s.email       = ['ncaspar@me.com', 'raffael@yux.ch', 'samuel.sieg@me.com']
  s.homepage    = 'https://pointhq.com/'
  s.license     = 'MIT'
  s.summary     = 'A simple CAS server written in Ruby using the Rails framework.'
  s.description = 'CASino is a simple CAS (Central Authentication Service) server.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  sign_file = File.expand_path '~/.gem/casino-private_key.pem'
  if File.exist?(sign_file)
    s.signing_key = sign_file
    s.cert_chain  = ['casino-public_cert.pem']
  end

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 2.12'
  s.add_development_dependency 'rspec-rails', '~> 2.0'
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'factory_girl', '~> 4.1'
  s.add_development_dependency 'webmock', '~> 1.9'
  s.add_development_dependency 'coveralls', '~> 0.7'

  s.add_runtime_dependency 'http_accept_language', '~> 2.0.0.pre'
  s.add_runtime_dependency 'addressable', '~> 2.3'
  s.add_runtime_dependency 'terminal-table', '~> 1.4'
  s.add_runtime_dependency 'useragent', '~> 0.4'
  s.add_runtime_dependency 'faraday', '~> 0.8'
  s.add_runtime_dependency 'rotp', '~> 1.4'
end
