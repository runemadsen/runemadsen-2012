/* Slideshow Container
-------------------------------------------------------- */

var Slideshow = Backbone.Model.extend({});

var SlideshowView = Backbone.View.extend({
	
	tagName: "div",
	id: "slideshow_container",
	imageTemplate: _.template('<img class="loadItem" src="<%= showItem %>" />'),
	videoTemplate: _.template('Im a video!'),
	slideshowElements: [],
	slideWindow: {},
	
	initialize: function()
	{		
		this.slideshowElements = $("*[data-slideshow]");
		this.model.bind("change", this.render, this);
		this.add_events();
	},
	
	add_events: function()
	{	
		var t = this;
		
		$("#open-slides").click(function() {
			t.open_slideshow();
			return false;
		});
			
		this.slideshowElements.click(function() {
			var index = t.slideshowElements.index(this);
			t.change_slides(index);
		});
	},
	
	open_slideshow: function()
	{
		var t = this;
		
		this.slideWindow = window.open();
		$(this.slideWindow.document).find("head").html("<style>body, html { margin: 0; padding: 0; }</style>");
		$(this.slideWindow.document).find("body").html("<p>Loading</p>");
		t.change_slides(0);
	},
	
	change_slides: function(index)
	{
		$(".slideshow-active").removeClass("slideshow-active");
		$(this.slideshowElements[index]).addClass("slideshow-active");
		this.model.set({showItem:$(this.slideshowElements[index]).attr("data-slideshow")});
	},
	
	render: function()
	{	
		var t = this;
		
		// just render into element on every change
		$(this.slideWindow.document.body).html(this.imageTemplate(this.model.toJSON()));
		
		$(this.slideWindow.document.body).find(".loadItem").load(function() {
			t.fit_to_screen(this);
		});
		
		return this;
	},
	
	fit_to_screen: function(el)
	{
		var window_height = this.slideWindow.document.body.clientHeight;
		var window_width  = this.slideWindow.document.body.clientWidth;
		var image_width   = $(el).width();
		var image_height  = $(el).height();
		var height_ratio  = window_height / image_height;
		var width_ratio   = window_width / image_width;
		
		// super ugly hack to make sure first image is not scaled and disappears because of ratio being 0,0
		if(height_ratio == 0 || width_ratio == 0)
			return
			
		var w;
			
		if (height_ratio < width_ratio)
		{
			$(el).css("width", "auto")
			$(el).css("height", "100%")
			
		}
		else
		{
			$(el).css("width", "100%")
			$(el).css("height", "auto")
		}
		
		var w = $(el).width();
		$(el).css("position", "absolute");
		$(el).css("left", "50%");
		$(el).css("margin-left", -w/2);
		
	}
	
});


/* App Code
-------------------------------------------------------- */

var SlideshowApp = Backbone.View.extend({
	
	slideshow: {},
	slideshowView: {},
	
	initialize: function()
	{		
		this.slideshow = new Slideshow({enabled:false, showItem:undefined});
		this.slideshowView = new SlideshowView({model:this.slideshow});
	}
	
});

$(function(){
	window.app = new SlideshowApp();
})