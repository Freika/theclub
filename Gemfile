# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap', require: false
gem 'pg'
gem 'puma'
gem 'rails', '6.0.3.2'
gem 'sassc'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'webpacker'

gem 'devise'
gem 'pundit'

gem 'audited'
gem 'paranoia'
gem 'strong_migrations'

gem 'omniauth-telegram'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'overcommit', require: false
  gem 'pry-rails'
end

group :development do
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'bundler-audit'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'listen'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'simplecov-lcov'
end
