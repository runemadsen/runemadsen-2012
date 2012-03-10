require 'rubygems'
require 'bundler'
Bundler.require
require './helpers'
require './models'

class RuneMadsen < Sinatra::Base
  
  set :root, File.dirname(__FILE__)
  register Padrino::Helpers
  helpers RuneMadsenHelpers
  
  # Home
  # -------------------------------------------------------------------

  get "/" do
    ENV['RACK_ENV']
  end
  
  # Blog
  # -------------------------------------------------------------------
  
  get '/blog' do
    @active = :blog
    @posts = Post.all :limit => 5, :order => [ :created_at.desc ]
    @cur_page = 0
    @num_pages = Post.count / 5
    erb :'blog/index'
  end
  
  get '/blog/page/:page' do
    @active = :blog
    @cur_page = params[:page].to_i
    @num_pages = Post.count / 5
    offset = @cur_page * 5
    @posts = Post.all :limit => 5, :order => [ :created_at.desc ], :offset => offset
    erb :'blog/index'
  end
  
  # Info
  # -------------------------------------------------------------------

  get "/info" do
    @active = :info
    erb :"info/index"
  end
  
  get '/info/resume' do
    @active = :info
    erb :"info/resume"
  end
  
  # 404
  # -------------------------------------------------------------------
  
  not_found do
    erb :'errors/404', :layout => false
  end
  
  # Admin
  # -------------------------------------------------------------------
  
  get '/admin' do
    # protected!
    erb :"admin/index"
  end
  
  post '/admin/blog' do
    Post.create(params[:post])
    redirect "/admin"
  end
  
end