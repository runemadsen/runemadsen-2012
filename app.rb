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
    erb :'front/index'
  end
  
  # Work
  # -------------------------------------------------------------------
  
  get '/work' do
    @active = :work
    @projects = Project.all :published => true, :order => [ :ordering.asc ]
    erb :'work/index'
  end
  
  get '/work/:route' do
    @active = :work
    @project = Project.first :route => params[:route]
    erb :'work/show'
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
  
  # Mail
  # -------------------------------------------------------------------

  get "/mail" do
    @active = :mail
    erb :"mail/index"
  end
  
  # Writings
  # -------------------------------------------------------------------
  
  get '/printing-code-2012/slideshow-blank' do
    erb :"printing-code-2012/slideshow_blank", :layout => false
  end
  
  get '/printing-code-2012/?:page?' do
    @active = :itp
    filename = params[:page] || "index"
    @html = md_to_html(File.join("writings", "printing-code", filename + ".md"))
    
    if params[:slideshow]
      erb :"printing-code-2012/slideshow", :layout => false
    else
      erb :"printing-code-2012/index"
    end
  end
  
  get '/comm-web-2012/?:page?' do
    filename = params[:page] || "index"
    @html = md_to_html(File.join("writings", "comm-web", filename + ".md"))
    if params[:slideshow]
      erb :"printing-code-2012/slideshow", :layout => false
    else
      erb :"printing-code-2012/index"
    end
  end
  
  get '/itp-camp' do
    @html = md_to_html("writings/openframeworks-itpcamp.md")
    erb :"printing-code-2012/index"
  end
  
  # Other
  # -------------------------------------------------------------------
  
  get "/sales" do
    
    @url = "http://runemadsen-2012.s3.amazonaws.com/sales/"
    @sales = [
      { :img => "IMG_1089.JPG" },
      { :img => "IMG_1090.JPG", :buyer => "Scott Wayne Indiana" },
      { :img => "IMG_1091.JPG" },
      { :img => "IMG_1092.JPG" },
      { :img => "IMG_1093.JPG" },
      { :img => "IMG_1094.JPG" },
      { :img => "IMG_1095.JPG" },
      { :img => "IMG_1096.JPG", :buyer => "Xavier Aaronson" },
      { :img => "IMG_1097.JPG" },
      { :img => "IMG_1098.JPG" },
      { :img => "IMG_1099.JPG" },
      { :img => "IMG_1100.JPG" },
      { :img => "IMG_1101.JPG" },
      { :img => "IMG_1102.JPG" },
      { :img => "IMG_1103.JPG", :buyer => "Molly Schwartz" },
      { :img => "IMG_1104.JPG" },
      { :img => "IMG_1105.JPG" },
      { :img => "IMG_1106.JPG" },
      { :img => "IMG_1107.JPG" },
      { :img => "IMG_1108.JPG" },
      { :img => "IMG_1109.JPG" },
      { :img => "IMG_1110.JPG" },
      { :img => "IMG_1111.JPG" },
      { :img => "IMG_1112.JPG" },
      { :img => "IMG_1113.JPG" },
      { :img => "IMG_1114.JPG" },
      { :img => "IMG_1115.JPG" },
    ]
    
    erb :'other/sales'
  end
  
  # 404
  # -------------------------------------------------------------------
  
  not_found do
    erb :'errors/404', :layout => false
  end
  
  # Admin
  # -------------------------------------------------------------------
  
  get '/admin' do
    protected!
    erb :"admin/index"
  end
  
  post '/admin/blog' do
    protected!
    if params[:id]
      @post = Post.get(params[:id])
      @post.update(params[:post])
    else
      @post = Post.new(params[:post])
      @post.route = params[:post][:title].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') if params[:post][:route] = ""
      @post.save
    end
    redirect "/blog/#{@post.route}"
  end
  
  get '/blog/:route/edit' do
    protected!
    @post = Post.first :route => params[:route]
    erb :'blog/edit'
  end
  
end