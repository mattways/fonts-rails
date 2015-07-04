$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'fonts/rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'fonts-rails'
  s.version     = Fonts::Rails::VERSION
  s.authors     = ['Museways']
  s.email       = ['hello@museways.com']
  s.homepage    = 'https://github.com/museways/fonts-rails'
  s.summary     = 'Google fonts for rails.'
  s.description = 'Adds a simple view helper to create the google fonts link tag in rails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'rails', (ENV['RAILS_VERSION'] ? "~> #{ENV['RAILS_VERSION']}" : ['>= 4.0.0', '< 4.3.0'])

  if RUBY_PLATFORM == 'java'
    s.add_development_dependency 'activerecord-jdbcsqlite3-adapter', '~> 1.3'
    s.add_development_dependency 'jruby-openssl', '~> 0.9'
  else
    s.add_development_dependency 'sqlite3', '~> 1.3'
  end
end
