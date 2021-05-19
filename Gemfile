source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
gem 'rack-cors', require: 'rack/cors'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 4.3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Additional dependencies
gem 'active_model_serializers', '~> 0.10.0'
gem 'acts_as_paranoid'
gem 'bcrypt'
gem 'fast_jsonapi'
gem 'newrelic_rpm'
gem 'sentry-raven'
gem 'will_paginate', '~> 3.1.0'
gem 'awesome_print'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop', '~> 0.58.2', require: false
  gem 'shoulda-matchers'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
  gem 'erb_lint', require: false
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'ordinare'
  gem 'overcommit', require: false
  gem 'rack-livereload', '~> 0.3.17'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'autotest-rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
