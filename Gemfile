source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.0.0'
gem 'rails', '4.0.0'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'sanitize'

gem 'mechanize'
gem 'nokogiri'

gem 'sidekiq'
gem 'redis'

gem 'resque', require: 'resque/server'  
gem 'whenever', :require => false

gem "mongoid-paperclip", :require => "mongoid_paperclip"

gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-twitter'

gem "parse-ruby-client"

# gem 'exception_notification'

# gem 'aws-sdk', '~> 1.3.4'

  # bundle exec rake doc:rails generates the API under doc/api.

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano', '~> 2.15.4', group: :development  

# Use debugger
gem 'debugger', group: [:development, :test]

gem 'cancan'
gem 'compass-rails', '~> 2.0.alpha.0'
gem 'devise', :git => 'https://github.com/plataformatec/devise.git'
gem 'figaro'
gem 'haml-rails'
gem 'mongoid', '~> 4', :github=>"mongoid/mongoid"
gem 'rolify'
gem 'simple_form', '>= 3.0.0.rc'
gem 'zurb-foundation'

group :assets do
  gem 'therubyracer', :platform=>:ruby
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'fabrication'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'mongoid-rspec', '>= 1.6.0', :github=>"evansagge/mongoid-rspec"
end

