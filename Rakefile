require 'rubygems'
require 'bundler'
Bundler.require
require './models'

namespace :db do
  task :migrate do
    DataMapper.auto_upgrade!
  end
end

