/* Slideshow Container
-------------------------------------------------------- */

var Slideshow = Backbone.Model.extend({});

var SlideshowView = Backbone.View.extend({
	
	tagName: "div",
	id: "slideshow_container",
	imageTemplate: _.template('<img src="<%= showItem %>" />'),
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
			t.change_slides(0);
			return false;
		});
			
		this.slideshowElements.click(function() {
			var index = t.slideshowElements.index(this);
			t.change_slides(index);
		});

		$(window).bind("fullscreen-off", function(e) {
			t.model.set({enabled:false});
		});
	},
	
	open_slideshow: function()
	{
		this.slideWindow = window.open();
		$(this.slideWindow.document.body).html("<div id='slides'></div>");
	},
	
	change_slides: function(index)
	{
		$(".slideshow-active").removeClass("slideshow-active");
		$(this.slideshowElements[index]).addClass("slideshow-active");
		this.model.set({showItem:$(this.slideshowElements[index]).attr("data-slideshow")});
	},
	
	render: function()
	{		
		// just render into element on every change
		$(this.slideWindow.document.body).find("#slides").html(this.imageTemplate(this.model.toJSON()));
		
		return this;
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