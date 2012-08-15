/* Slideshow Container
-------------------------------------------------------- */

var Slideshow = Backbone.Model.extend({});

var SlideshowView = Backbone.View.extend({
	
	tagName: "div",
	id: "slideshow_container",
	imageTemplate: _.template('<img src="<%= showItem %>" />'),
	videoTemplate: _.template('Im a video!'),
	slideshowElements: [],
	
	initialize: function()
	{		
		this.slideshowElements = $("*[data-slideshow]");
		this.model.bind("change", this.render, this);
		this.add_events();
	},
	
	add_events: function()
	{		
		var t = this;

		this.slideshowElements.click(function() {
			var index = t.slideshowElements.index(this);
			t.model.set({enabled:true, showItem:$(this).attr("data-slideshow"), index:index});
		});

		$(window).bind("fullscreen-off", function(e) {
			t.model.set({enabled:false});
		});
	},
	
	render: function()
	{		
		// just render into element on every change
		$(this.el).html(this.imageTemplate(this.model.toJSON()));
		
		// if enabled state changed, then enable/disable
		if(this.model.changedAttributes().enabled == true)
		{
			this.enable();
		}
		else if(this.model.changedAttributes().enabled == false)
		{
			this.disable();
		}
		
		return this;
	},
	
	enable: function()
	{
		var t = this;
		
		$(document).bind('keypress', _.bind(this.keypressed, this));
		
		$("body").append(this.el);
		
		if (fullScreenApi.supportsFullScreen) {
			fullScreenApi.requestFullScreen(this.el);
		}
	},
	
	disable: function()
	{
		$(document).unbind('keypress', _.bind(this.keypressed, this));
		$(this.el).remove();
	},
	
	keypressed: function(key)
	{
		if(key.keyCode == 37)
		{
			var index = this.model.get("index");
			
			if(index > 0)
			{
				this.model.set({showItem:$(this.slideshowElements[index-1]).attr("data-slideshow"), index:index-1});
			}
		}
		else if(key.keyCode == 39)
		{
			var index = this.model.get("index");
			
			if(index < this.slideshowElements.length - 1)
			{
				this.model.set({showItem:$(this.slideshowElements[index+1]).attr("data-slideshow"), index:index+1});
			}
		}
	}
	
});

/* Automatic Processing Run
-------------------------------------------------------- */

var CodeBlock = Backbone.View.extend({
	
	canvas:{},
	
	initialize: function()
	{		
		this.check_code();
	},
	
	check_code: function()
	{
		var t = this;
		var code = $(this.el).text();
		
		if(code.match(/autorun/))
		{
			this.canvas = $("<canvas class='processingjs'></canvas>");
			$(this.el).before(this.canvas);
			new Processing(this.canvas[0], code);
			$(this.el).addClass("processingjs");
			
			if(code.match(/autohide/))
			{
				$(this.el).hide();
				this.canvas.click(function() {
					$(t.el).toggle();
				});
			}
		}
	}
	
});

var ProcessingRunner = Backbone.View.extend({
	
	codeBlocks: [],
	
	initialize: function()
	{		
		/*_.each($('pre'), function(pre, i) {
			this.codeBlocks.push( new CodeBlock({el:pre, id:i}));
		}, this);*/
	}
	
});

/* App Code
-------------------------------------------------------- */

var PrintingCode = Backbone.View.extend({
	
	slideshow: {},
	slideshowView: {},
	processingRunner: {},
	
	initialize: function()
	{		
		this.create_toc();
		
		this.slideshow = new Slideshow({enabled:false, showItem:undefined});
		this.slideshowView = new SlideshowView({model:this.slideshow});
		this.processingRunner = new ProcessingRunner();
	},
	
	create_toc : function()
	{
		$("h2").each(function() {

		  var org = $(this).text();
		  alias = org.replace(/\ /g, "-").replace(/:/g, "").toLowerCase();

		  // create anchor
		  $("<a id='"+alias+"'></a>").insertBefore(this);

		  // create link in toc ul
			$("#toc").append("<li><a href='#"+alias+"'>"+org+"</a></li>")
		});
	}
	
});

$(function(){
	window.app = new PrintingCode();
});
