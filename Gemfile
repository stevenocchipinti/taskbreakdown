source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '4.0.2'
gem 'haml-rails'
gem 'sass-rails'
gem 'jquery-rails'
gem 'coffee-rails'
gem 'uglifier', '>= 1.0.3'
gem 'therubyracer', :platforms => :ruby
gem 'ancestry'

group :production do
  gem 'pg'
  gem 'thin'
end

group :development, :test do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'awesome_print'
end

group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end
