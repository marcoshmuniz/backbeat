source ENV.fetch('GEM_SOURCE', 'https://rubygems.org/')

gem 'rake'

gem 'grape'
gem 'httparty'

gem 'activerecord', require: 'active_record'
platform :jruby do
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'jdbc-postgres'
end
platform :mri do
  gem 'activerecord-postgresql-adapter'
end
gem 'foreigner'
gem 'enumerize'

gem 'awesome_print'
gem 'mail'
gem 'sidekiq', '~> 3.1.0'
gem 'sidekiq-failures', '~> 0.4.0'

platforms :ruby do
  gem 'unicorn'
end

platforms :jruby do
  gem 'jruby-openssl', :require => false
  gem 'torquebox', '3.0.0'
  gem 'torquebox-messaging', '3.0.0'
  gem 'warbler'
  gem 'torquebox-server'
end

group :development do
  platforms :jruby do
    gem 'torquebox-capistrano-support'
  end
end

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'database_cleaner'
  gem 'rack-test'
  gem 'rspec'
  gem 'rspec-sidekiq'
  gem 'factory_girl'
  gem 'timecop'
  gem 'webmock'
  gem 'zip'
end
