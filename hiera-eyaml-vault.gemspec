lib = File.expand_path('lib', File.dirname(__FILE__))
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rake'
require 'hiera/backend/eyaml/encryptors/vault'
VERSION = Hiera::Backend::Eyaml::Encryptors::Vault::VERSION


Gem::Specification.new do |gem|
  gem.name          = "hiera-eyaml-vault"
  gem.version       = VERSION
  gem.description   = "Eyaml plugin for Vault transit secrets engine"
  gem.summary       = "Encryption plugin for hiera-eyaml to use Vault's transit secrets engine"
  gem.author        = "Craig Dunn"
  gem.license       = "Apache-2.0"

  gem.homepage      = "http://github.com/crayfishx/hiera-eyaml-vault"
  gem.files         = Rake::FileList["lib/**/*"].to_a
  gem.add_dependency 'hiera-http', '< 4.0.0'
end


