source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'haml-rails'
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
  gem 'compass', :git => 'git://github.com/chriseppstein/compass.git', :branch => 'rails31'
end

gem 'jquery-rails'

gem "stitch-rb", "0.0.3"
gem 'haml'
gem 'coffee-script'


# mongo drivers
gem 'mongo_mapper'
gem 'bson_ext'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'sqlite3'
  gem 'jasmine'
  gem "rspec"
  gem "rspec-rails"
  gem "factory_girl"
  gem "factory_girl_rails"
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
  gem 'pg'
end

