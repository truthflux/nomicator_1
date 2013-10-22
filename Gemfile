source 'https://rubygems.org'
#ruby-gemset=nomicator_setup

gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.3.2.0'
gem 'bcrypt-ruby', '3.0.1'
gem 'factory_girl_rails', '4.2.1'

ruby '1.9.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier', '1.0.3'
  gem 'turbolinks'
  gem 'jbuilder', '1.0.2'
end

gem 'jquery-rails', '3.0.4'

group :doc do
  gem 'sdoc', '0.3.20', require:false
end

# Use sqlite3 and rspec for dev
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'simplecov'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

