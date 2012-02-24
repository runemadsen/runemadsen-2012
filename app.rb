require 'rubygems'
require 'bundler'
Bundler.require
require './helpers'
require './models'

class RuneMadsen < Sinatra::Base
  
  set :root, File.dirname(__FILE__)
  register Padrino::Helpers
  helpers RuneMadsenHelpers
  register Sinatra::AssetPack
  
  # Assetpack
  # -------------------------------------------------------------------
  
  assets {
    serve '/js',     from: 'assets/js'
    serve '/css',    from: 'assets/css'

    js :shared, '/js/shared.js', [
      '/js/jquery.js',
      '/js/underscore.js',
      '/js/backbone.js',
      '/js/tools.js',
      '/js/modules.js',
      '/js/jquery-tools.js',
      '/js/date.js'
    ]

    js :blog, '/js/blog.js', [
      '/js/blog-app.js'
    ]

    js :error, '/js/error.js', [
     '/js/404.js'
    ]

    css :shared, '/css/shared.css', [
      '/css/reset.css',
      '/css/runemadsen.css'
    ]

    js_compression  :yui, :munge => true
    css_compression :sass

    prebuild ENV['RACK_ENV'] == 'production'
  }
  
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
    erb :"info/index"
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