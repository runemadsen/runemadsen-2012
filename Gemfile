source "http://rubygems.org"

gem "thin"
gem "sinatra"
gem 'sinatra-assetpack', :require => 'sinatra/assetpack', :git => 'git://github.com/rstacruz/sinatra-assetpack.git'
gem 'yui-compressor', :require => 'yui/compressor'
gem 'padrino-helpers'
gem "sass", "~> 3.1.12"
gem 'dm-core'
gem 'dm-validations'
gem 'dm-migrations'
gem 'dm-timestamps'
gem 'dm-serializer'
gem 'dm-tags'
gem 'time_diff'

group :development do
  gem 'dm-mysql-adapter'
end

group :production do
  gem 'dm-postgres-adapter'
  gem 'do_postgres'
end