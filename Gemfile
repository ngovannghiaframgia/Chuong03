source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"

gem "rails", "~> 5.2.2"
gem "bootstrap-sass", "3.3.7"
gem "bcrypt","3.1.12"
gem "ffaker"
gem "kaminari"
gem "bootstrap4-kaminari-views"
gem "carrierwave", "1.2.2"
gem "mini_magick", "4.7.0"
gem "ckeditor"
gem "rails-i18n"
gem "i18n-js"
gem "font-awesome-rails"
gem "config"
gem "figaro"
gem "jquery-rails"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "sqlite3", "1.3.13"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

group :production do
  gem "pg", "0.18.4"
  gem "fog", "1.42"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
