source 'http://rubygems.org'

gem 'rails', '3.2.0'


# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'thin'
gem 'bcrypt-ruby', :require => "bcrypt"
gem "acts_as_list"
gem 'nested_form', :git => "git://github.com/ryanb/nested_form.git"
gem "blueprint-rails"
gem 'json'
gem 'json_pure'
gem 'newrelic_rpm'
gem 'dalli'

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'


group :development do
  gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', '< 0.8.3', :require => false
  gem 'simplecov', '>= 0.4.0', :require => false
end
