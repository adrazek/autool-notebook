$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "autool_notebook/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "autool_notebook"
  s.version     = AutoolNotebook::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AutoolNotebook."
  s.description = "TODO: Description of AutoolNotebook."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.10"
  s.add_dependency "simple_calendar", "~> 1.1.0"

  s.add_development_dependency "sqlite3"
end
