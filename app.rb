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
  
  get '/blog/:route' do
    @active = :blog
    @post = Post.first :route => params[:route]
    return 404 if @post.nil?
    erb :'blog/show'
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
    if params[:id]
      @post = Post.get(params[:id])
      @post.update(params[:post])
    else
      Post.create(params[:post])
    end
    redirect "/blog/#{@post.route}"
  end
  
  get '/blog/:route/edit' do
    #protected!
    @post = Post.first :route => params[:route]
    erb :'blog/edit'
  end
  
end