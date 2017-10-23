# frozen_string_literal: true

source 'https://rubygems.org'
ruby '~> 2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Bootstrap 4 (beta) - https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 4.0.0.beta'
# jquery for bootstrap - https://github.com/rails/jquery-rails
gem 'jquery-rails'
# gem to control pages pagination - https://github.com/mislav/will_paginate
gem 'will_paginate', '3.1.0'
# bootstrap integration with will paginate - https://github.com/yrgoldteeth/bootstrap-will_paginate
gem 'bootstrap-will_paginate'
# bootstrap for filestyle - https://github.com/mauriciopasquier/bootstrap-filestyle-rails
gem 'bootstrap-filestyle-rails'

# Devise is a flexible authentication solution for Rails based on Warden - https://github.com/plataformatec/devise
gem 'devise'
gem 'devise-i18n-views'
# CanCanCan is an authorization library which restricts what resources a given user is allowed to access.
# https://github.com/CanCanCommunity/cancancan
gem 'cancancan', '~> 2.0'

# add roles
gem 'rolify'
# Rails admin
gem 'rails_admin'
gem 'rails_admin_rollincode'

# Ransack enables the creation of sim and adv search forms for your RoR appl
# https://github.com/activerecord-hackery/ransack
gem 'ransack'

# select2-rails gem integrates Select2 jQuery with the Rails asset pipeline.
# https://github.com/argerim/select2-rails
gem 'select2-rails'

# Paperclip is intended as an easy file attachment library for ActiveRecord.
# https://github.com/thoughtbot/paperclip
gem 'paperclip', '~> 5.0.0'

# activity feed - https://github.com/chaps-io/public_activity
gem 'public_activity'

# Sanitize is a whitelist-based HTML and CSS sanitizer. Given a list of acceptable elements,
# attributes, and CSS properties, Sanitize will remove all unacceptable HTML and/or CSS from a string.
# https://github.com/rgrove/sanitize
gem 'sanitize'

# Add some nice ActiveModel/ActiveRecord validators.
# https://github.com/fnando/validators
gem 'cpf_cnpj'
gem 'validators'

# phone validaton - https://github.com/daddyz/phonelib
gem 'phonelib'

# When your app is using Paranoia, calling destroy on an ActiveRecord object
# doesn't actually destroy the database record, Soft delete
# https://github.com/rubysherpas/paranoia
gem 'paranoia', '~> 2.3', '>= 2.3.1'

gem 'rails-i18n', '~> 5.0.0'

group :development, :test do
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  # Call 'byebug' anywhere in the code to stop exec and get a debugger console
  gem 'byebug', platforms: %I[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
  gem 'selenium-webdriver'
end

group :development do
  gem 'bullet'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Access an IRBconsole on exception pag or by using <%= console %> in the code
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development. Keep your appl running in the background.https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :production do
  # PostqreSQL
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %I[mingw mswin x64_mingw jruby]
