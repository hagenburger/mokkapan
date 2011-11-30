Encoding.default_external = 'UTF-8'

source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'jquery-rails'

gem 'haml'
gem 'rdiscount'
gem 'sass-rails', :git => "git://github.com/rails/sass-rails.git", :branch => "3-1-stable"
gem "compass", :git => "git://github.com/chriseppstein/compass.git", :tag => "v0.12.alpha.0"
gem 'compass-susy-plugin'
gem "paperclip", "~> 2.4"

group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

# active admin
gem 'activeadmin'
gem 'devise', '~> 1.4.9'
gem 'tinymce-rails'
gem "meta_search",    '>= 1.1.0.pre'

group :development do
  gem 'sqlite3'
  gem 'capistrano'
end

group :test do
  gem 'turn', :require => false
end

group :production do
  gem 'mysql2'
  gem 'fcgi'
end
