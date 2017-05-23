source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.0'
gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.5'

# frontend
gem 'turbolinks', '~> 5'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'slim-rails', '3.1.1'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem "font-awesome-rails"
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

# working with images
gem 'carrierwave', '~> 1.0'
gem "mini_magick"

# admin
gem 'rails_admin', '~> 1.1.1'

# adapter for russian language
gem 'russian', '~> 0.6.0'

# handle video displaying
gem 'youtube_rails'

# SEO
gem 'friendly_id', '~> 5.1.0'

# authentication
gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-vkontakte'

# other
gem 'social-share-button'
gem 'htmlcompressor', '~> 0.2.0'
gem 'toastr-rails'
# helper gems for solving capistrano problems
gem 'therubyracer'

# text editor
gem 'ckeditor'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
  gem 'railroady'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "binding_of_caller"
  gem 'annotate'
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

group :test do
  gem 'simplecov', :require => false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
