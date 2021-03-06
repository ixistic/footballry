source 'https://rubygems.org'
ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
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

# Devise
gem 'devise'
# CanCanCan
gem 'cancancan', '~> 1.10'
# Bootstrap
gem 'bootstrap', '~> 4.0.0.alpha3.1'
# Font-awesome
gem 'font-awesome-sass'
# Rails Admin
gem 'rails_admin', '~> 1.0'
# Profiling
gem 'rack-mini-profiler'
gem 'flamegraph'
gem 'stackprof'
gem 'fast_stack'
gem 'paper_trail'
gem 'omniauth-facebook'
gem 'carrierwave', '>= 1.0.0.rc', '< 2.0'
gem 'tinymce-rails'
gem 'jquery-turbolinks'
# Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
gem 'web-console'
gem 'listen', '~> 3.0.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '~> 3.6'
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano-rbenv-install', '~> 1.2.0'
  gem 'capistrano-rails', '~> 1.1.3'
  gem 'capistrano-passenger'
  gem 'capistrano-secrets-yml'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
