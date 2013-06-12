# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_on_heroku/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Richard Schneeman", "Terence Lee"]
  gem.email         = ["richard@heroku.com", "terence@heroku.com"]
  gem.description   = %q{Make Running Rails 4 on Heroku easier}
  gem.summary       = %q{Configures your app to log to stdout and to serve assets in production.}
  gem.homepage      = "https://github.com/heroku/rails_on_heroku"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "rails_on_heroku"
  gem.require_paths = ["lib"]
  gem.version       = RailsOnHeroku::VERSION
  gem.license       = 'LICENSE'

  gem.add_dependency "rails_serve_static_assets"
  gem.add_dependency "rails_stdout_logging"
end
