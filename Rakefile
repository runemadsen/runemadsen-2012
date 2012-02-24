require 'rubygems'
require 'bundler'
Bundler.require
require './models'

namespace :db do
  
  task :migrate do
    DataMapper.auto_upgrade!
  end
  
end

# rake assetpack:build
APP_FILE  = 'app.rb'
APP_CLASS = 'RuneMadsen'
require 'sinatra/assetpack/rake'

