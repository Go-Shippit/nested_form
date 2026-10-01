lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nested_form/version'

Gem::Specification.new do |s|
  s.name        = "nested_form"
  s.version     = NestedForm::VERSION
  s.authors     = ["Ryan Bates", "Andrea Singh"]
  s.email       = "ryan@railscasts.com"
  s.homepage    = "http://github.com/ryanb/nested_form"
  s.summary     = "Gem to conveniently handle multiple models in a single form."
  s.description = "Gem to conveniently handle multiple models in a single form with Rails 3 and jQuery or Prototype."

  s.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com'
  s.metadata['github_repo'] = 'ssh://github.com/Go-Shippit/nested_form'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec-rails", "~> 2.6"
  s.add_development_dependency "mocha"
  s.add_development_dependency "capybara", "~> 1.1"
  s.required_rubygems_version = ">= 1.3.4"
end
