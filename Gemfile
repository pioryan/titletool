source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'haml'
gem 'newrelic_rpm'
gem "rails_autolink", "~> 1.0.9"
gem 'recaptcha', :require => 'recaptcha/rails'
gem "curb"


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2'
  gem 'bootstrap-sass', '~> 2.3.1.0'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'
  gem 'execjs'
  gem 'uglifier', '>= 1.0.3'
  #gem "twitter-bootstrap-rails", :ref => "56a56cfc6e9b8666857e1561245b5d2569bb486d"

end

gem 'jquery-rails'
group :production do
  gem 'pg'
  #gem 'mysql2'
  gem "yui-compressor", "~> 0.9.6"
end

group :development do
  gem 'better_errors'
  gem "binding_of_caller"
end

group :development, :test do
  gem 'mysql2'
  gem 'rspec-rails', '~> 2.8.0'
  gem 'rspec2-rails-views-matchers', '>= 0.1.6'
  gem 'rspec-prof'
  gem "fixture_builder", "~> 0.3.3"
  gem 'shoulda-matchers', '~> 1.2.0'
  gem 'fuubar'
  gem 'haml-rails'
  gem "capybara", "~> 1.1.2"
  gem 'rr', '>= 1.0.2'
end
