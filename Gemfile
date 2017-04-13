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
gem 'slim-rails'
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

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'annotate'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
