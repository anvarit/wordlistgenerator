# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wordlistgenerator/version'

Gem::Specification.new do |spec|
  spec.name          = 'wordlistgenerator'
  spec.version       = Wordlist::VERSION
  spec.authors       = ['Kevin Kirsche']
  spec.email         = ['kev.kirsche@gmail.com']

  spec.summary       = 'A tool to generate wordlists for DNS mapping.'
  spec.description   = 'A tool to generate wordlists for DNS mapping.'
  spec.homepage      = 'https://github.com/kkirsche/wordlistgenerator'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
