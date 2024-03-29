source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'rails', '~> 6.1', '>= 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem "puma", ">= 4.3.8"
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker', '~> 4.0'
gem 'webpacker', '~> 5.4'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # accelerate development of email messages
  gem "letter_opener", "~> 1.8"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'administrate', github: 'excid3/administrate', branch: 'jumpstart'
gem 'bootstrap', '~> 4.5'


# gem 'devise', '~> 4.7', '>= 4.7.1'
# omniauth's upgrade to 2.0 is not officially incorporated 
# into devise's stable version yet.
# cantoniodasilva recommends the repo below
# gem 'devise' github: ' heartcombo/devise', branch: 'master'
gem 'devise-bootstrapped', github: 'excid3/devise-bootstrapped', branch: 'bootstrap4'
gem 'devise_masquerade', '~> 1.2'
gem 'font-awesome-sass', '~> 5.13'
gem 'friendly_id', '~> 5.3'
gem 'mini_magick', '~> 4.10', '>= 4.10.1'
gem 'name_of_person', '~> 1.1'
gem 'noticed', '~> 1.2'

# omniauth-facebook and omniauth-twitter rely on an old, buggy version of omniauth 4/19/21
gem 'omniauth', '~> 1.9.1' # errors currently with higher versions
gem 'omniauth-facebook', '~> 6.0'
# gem 'omniauth-github', '~> 2.0'
gem 'omniauth-twitter', '~> 1.4'
gem 'sidekiq', '~> 6.0', '>= 6.0.3'
gem 'sitemap_generator', '~> 6.1', '>= 6.1.2'
gem 'whenever', require: false
gem 'image_processing'

# app-specific
gem 'pagy', '~> 3.9'
gem 'rack-cors', '~> 1.1', '>= 1.1.1' #ngrok testing
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6', groups: [:development, :test] #ngrok testing
# gem 'acts-as-taggable-on', '~> 6.5'
gem 'acts-as-taggable-on', '~> 8.1'
# gem 'trix-rails', require: 'trix' # trix for administrate is seperate from actiontext in main app
# gem 'administrate-field-trix' # supporting code for the trix field
gem 'meta-tags', '~> 2.14'
gem 'aws-sdk-s3', '~> 1.87'
##  external api's
#   send leads to hubspot
gem 'hubspot-api-client', '~> 9.2', '>= 9.2.1'
#   overall api client
gem 'httparty', '~> 0.18.1'
#   contact lead email
gem 'sendgrid-ruby'
#   pass rails vars to javascript
gem 'gon', '~> 6.4'
#   create lists with a position 
gem 'acts_as_list', '~> 1.0', '>= 1.0.3'

# fix security bug
gem 'omniauth-rails_csrf_protection'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'

