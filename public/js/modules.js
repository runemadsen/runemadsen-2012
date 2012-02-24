var Modules = {};

Modules.fixie = {};
Modules.fixie = {
	
	setup_fixie : function(options)
	{
		this.fixie_el = $(this.el).find(options.els);
		
		this.fixie_settings = {
	    snapped       : false,
	    position    : this.fixie_el.position(),
	    offset      : this.fixie_el.offset(),
	    offset_y     : 0,
			original		: {
	      position  : this.fixie_el.css('position'),
	      top       : this.fixie_el.css('top'),
	      right     : this.fixie_el.css('right'),
	      bottom    : this.fixie_el.css('bottom'),
	      left      : this.fixie_el.css('left')                        
	    },
			dimensions	: {
				width    : this.fixie_el.width(),
	      height   : this.fixie_el.height()
			}
	  }
	
		_.extend(this.fixie_settings, options);
	
		this.check_browser();
	},
	
	check_browser : function()
	{
		if(is_ios())	this.bind_events_absolute();
		else					this.bind_events_fixed();
	},
	
	bind_events_fixed : function() 
	{
		$(window).bind('scroll', _.bind(this.handle_scroll_fixed, this));
    $(window).bind('resize', _.bind(this.on_reflow_fixed, this));
	},
	
	handle_scroll_fixed : function() 
	{
		if(this.fixie_settings.snapped)
		{
			if($(window).scrollTop() <= this.fixie_settings.offset.top){     
        this.fixie_el.css(this.fixie_settings.original);
        this.fixie_settings.snapped = false;
      }
    }
    else
		{
      if($(window).scrollTop() >= this.fixie_settings.offset.top)
			{
        this.fixie_el.css({ position: 'fixed', left: this.fixie_settings.offset.left, top: this.fixie_settings.offset_y, width : this.fixie_settings.dimensions.width });
        this.fixie_settings.snapped = true;
        return;
      }
    }
	},
	
	on_reflow_fixed : function() {
		this.fixie_settings.offset = this.fixie_el.find('.fixie').offset();
	  this.handle_scroll_fixed();
	}
	
}