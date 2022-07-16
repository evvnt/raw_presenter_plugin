lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'raw_presenter_plugin/version'

Gem::Specification.new do |spec|
  spec.name          = 'raw_presenter_plugin'
  spec.version       = RawPresenterPlugin::VERSION
  spec.authors       = ["Evvnt Dev Team"]
  spec.email         = ["dev@evvnt.com"]

  spec.summary       = %q{A COPRL presenter plugin for rendering inline Raw}
  spec.homepage      = 'http://github.com/coprl/raw_presenter_plugin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', "~> 2.0"
  spec.add_development_dependency 'rake', "~> 10.0"
end
