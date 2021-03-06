# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sswars/version'

Gem::Specification.new do |spec|
  spec.name          = "sswars"
  spec.version       = Sswars::VERSION
  spec.authors       = ["Rob Richards"]
  spec.email         = ["(rtfminc@gmail.com)"]

  spec.summary       = %q{Simple Star Wars name finder.}
  spec.description   = %q{Using the public Star Wars api (swapi.co) return character and planet names.}
  spec.homepage      = "https://github.com/rvrichards/sswars"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'httparty', '~> 0.14.0'
end
