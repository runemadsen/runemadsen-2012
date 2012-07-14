/* App
_________________________________________________________ */

var Front = Backbone.View.extend({
 
	initialize: function()
	{		
		_.extend(this, Modules.fixie);
		
		this.setup_fixie({
			els : ".fixie",
			offset_y : 25
		});
	}
	
});