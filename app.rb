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
  
  get '/work/new' do
    protected!
    erb :'work/new'
  end
  
  get '/work/:route' do
    
    
    @active = :work
    @project = Project.first :route => params[:route]

    if @project.has_own_layout
      erb "/work/individual/#{@project.route}".to_sym
    else
      erb :'work/show'
    end
  end
  
  get '/work/:route/edit' do
    protected!
    @project = Project.first :route => params[:route]
    erb :'work/edit'
  end
  
  post '/work' do
    protected!
    params[:project][:has_own_layout] = !params[:has_own_layout].nil?
    if params[:id]
      @project = Project.get(params[:id])
      @project.update(params[:project])
    else
      @project = Project.new(params[:project])
      @project.route = params[:project][:title].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') unless params[:project][:route]
      @project.save
    end
    redirect "/work/#{@project.route}"
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
  
  get '/blog/new' do
    protected!
    erb :'blog/new'
  end
  
  get '/blog/:route' do
    @active = :blog
    @post = Post.first :route => params[:route]
    return 404 if @post.nil?
    erb :'blog/show'
  end
  
  get '/blog/:route/edit' do
    protected!
    @post = Post.first :route => params[:route]
    erb :'blog/edit'
  end
  
  post '/blog' do
    protected!
    if params[:id]
      @post = Post.get(params[:id])
      @post.update(params[:post])
    else
      @post = Post.new(params[:post])
      @post.route = params[:post][:title].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') unless params[:post][:route]
      @post.save
    end
    redirect "/blog/#{@post.route}"
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

  post "/mail" do
    @active = :mail

    if params["address"] && params["address"] != ""
      return "You're a fake robot!"
    end

    if params[:action] == "subscribe"
      s = Subscriber.new
      s.name = params[:name]
      s.email = params[:email]
      s.save
      @message = "You have been subscribed to the mailinglist. Thank you!"
    elsif params[:action] == "unsubscribe"
      s = Subscriber.first(:email => params[:email])
      if s
        s.destroy
        @message = "You have been unsubscribed from the mailinglist."
      else
        @message = "I could not find your email in the database. Please try again or send me an email."
      end
    end
    erb :"mail/subscribemessage"
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

  get '/printing-code/slideshow-blank' do
    erb :"printing-code-2012/slideshow_blank", :layout => false
  end
  
  get '/printing-code/?:page?' do
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
      { :img => "IMG_1089.JPG", :buyer => "Harry Romon-Torres" }, 
      { :img => "IMG_1090.JPG", :buyer => "Scott Wayne Indiana" }, # NOT PICKED UP
      { :img => "IMG_1091.JPG", :buyer => "Daniel Shiffman" },
      { :img => "IMG_1092.JPG", :buyer => "Antonius" }, 
      { :img => "IMG_1093.JPG", :buyer => "Christina" }, # NOT PICKED UP
      { :img => "IMG_1094.JPG", :buyer => "Steve Klise" }, 
      { :img => "IMG_1095.JPG", :buyer => "Amy Haycock" }, # NOT PICKED UP
      { :img => "IMG_1096.JPG", :buyer => "Doug Kanter" }, 
      { :img => "IMG_1097.JPG", :buyer => "Kate Watson" }, # NOT PICKED UP
      { :img => "IMG_1098.JPG", :buyer => "Zeven Rodriguez" }, # NOT PICKED UP
      { :img => "IMG_1099.JPG", :buyer => "Will Jennings & Lia Martinez" }, 
      { :img => "IMG_1100.JPG", :buyer => "Natalie Be'er" }, 
      { :img => "IMG_1101.JPG", :buyer => "Paul May" }, 
      { :img => "IMG_1102.JPG", :buyer => "Fred Truman" }, 
      { :img => "IMG_1103.JPG", :buyer => "Molly Schwartz" }, # NOT PICKED UP
      { :img => "IMG_1104.JPG", :buyer => "Maria Marqvard" },
      { :img => "IMG_1105.JPG", :buyer => "Emilie Fuglsang" }, # NOT PICKED UP
      { :img => "IMG_1106.JPG", :buyer => "Christinas Veninde" }, # NOT PICKED UP
      { :img => "IMG_1107.JPG" },
      { :img => "IMG_1108.JPG" },
      { :img => "IMG_1109.JPG", :buyer => "Harry Romon-Torres" },
      { :img => "IMG_1110.JPG", :buyer => "Robin Reid" }, 
      { :img => "IMG_1111.JPG", :buyer => "Gabe Barcia-Colombo" }, 
      { :img => "IMG_1112.JPG", :buyer => "Sean McIntyre" }, # NOT PICKED UP
      { :img => "IMG_1113.JPG", :buyer => "Erica Newman" }, 
      { :img => "IMG_1114.JPG", :buyer => "Michael Edgecumbe" }, 
      { :img => "IMG_1115.JPG", :buyer => "Toby Kasper" },
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
    @subscribers = Subscriber.all
    erb :"admin/index"
  end
  
end