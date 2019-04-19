source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# decrease puma workers to free up ram for heroku
gem "puma_worker_killer"

# Whenever - Active job simple implementation
gem 'whenever', require: false

#favicon generator
gem 'rails_real_favicon'

#Sendgrid - email (not using because shit customer service)
#gem 'sendgrid-ruby'

# Mail Jet - email
gem 'mailjet'

#Generate sitemap for search engines (Google, Yahoo, bing etc)
gem 'sitemap_generator'

# Trees for db made easy
gem 'ancestry'

#used for javascript time processing
gem 'momentjs-rails'
#Use for finding distance in postgres database
gem 'geocoder'

#use for trie algorithm for effective autocomplete
gem 'twitter-typeahead-rails'

#Use for http requests from api servers
gem "http", require:['http']
# Use for searching the website database for results
gem 'searchkick'
gem 'searchjoy'

#Payment processing
gem 'stripe'

# listen to stripe webhooks and events
gem 'stripe_event'

# lightbox for image show
gem 'lightbox2-rails'

#http gem
gem "http"

#full text search
gem 'pg_search'
#easy pagination
# gem 'kaminari'
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap'
#google fog essentials from carrier wave git hub
gem "fog-google"
gem 'fog-core', '2.1.0'
gem "google-api-client", "> 0.8.5", "< 0.9"
gem "mime-types"

#carrier wave used for image - database use
gem 'carrierwave', '~> 1.0'
gem "mini_magick"
gem 'rmagick'

#Recaptcha to prevent spam
gem 'recaptcha', require: 'recaptcha/rails'

gem 'new_google_recaptcha'

# user authentication
gem 'devise'

gem 'bootstrap'

gem 'jquery-rails'

# summernote html wysiwyg editor
gem 'summernote-rails', '~> 0.8.10.0'
# jquery ui gems
gem 'jquery-ui-rails'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sassc'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'mini_racer'
  gem 'rspec-rails', '~> 3.8'
  gem 'guard-rspec', require: false

  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
