# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tdnet/version'

Gem::Specification.new do |spec|
  spec.name          = 'tdnet-client'
  spec.version       = TDnet::VERSION
  spec.authors       = ['Katsuma Ito']
  spec.email         = ['katsumai@gmail.com']

  spec.summary       = 'TDnet client for Ruby'
  spec.description   = 'TDnet client for Ruby'
  spec.homepage      = 'https://github.com/msetsu/tdnet-client-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'
  spec.add_dependency 'nokogiri'
  spec.add_development_dependency 'bundler', '>= 1.3.0', '< 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'mocha', '~> 1.1.0'
end
