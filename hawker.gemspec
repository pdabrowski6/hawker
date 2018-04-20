lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hawker/version'

Gem::Specification.new do |s|
  s.add_runtime_dependency 'rest-client', '~> 2.0', '>= 2.0.2'
  s.add_runtime_dependency 'nokogiri', '~> 1.8', '>= 1.8.2'
  s.add_development_dependency "rspec", '~> 3.7', '>= 3.7.0'
  s.name        = 'hawker'
  s.version     = Hawker::Version
  s.date        = '2018-04-20'
  s.summary     = "Scrap the most popular websites without the knowledge about the page structure or API access"
  s.description = "Scrap the most popular websites without the knowledge about the page structure or API access"
  s.authors     = ["Paweł Dąbrowski"]
  s.email       = 'dziamber@gmail.com'
  s.files       = Dir['lib/**/*.rb', 'spec/helper.rb']
  s.homepage    =
    'http://github.com/rubyhero/hawker'
  s.license       = 'MIT'
end
