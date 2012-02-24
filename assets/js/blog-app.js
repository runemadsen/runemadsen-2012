/* Tools
__________________________________________________________ */

function hours_to_rotation(d) 
{
   var hours = d.getHours();
   if (hours > 11) {
     hours -= 12;
   }
    return Math.round((hours * 30) + (d.getMinutes() / 2) + (d.getSeconds() / 120));
}

function minutes_to_rotation(d) {
    return Math.round((d.getMinutes() * 6) + (d.getSeconds() / 10));
}

function radians(deg)
{
	return deg * (Math.PI/180)
}

/* Post Model
__________________________________________________________ */

var Post = Backbone.Model.extend({
	
	initialize : function()
	{
		this.set({"created_at" : Date.parse(this.get("created_at"))});
	}
	
});

/* Post Collection
__________________________________________________________ */

var PostList = Backbone.Collection.extend({
	model : Post
});

var posts = new PostList();

/* Post View
_________________________________________________________ */

var PostView = Backbone.View.extend({
		
	initialize : function()
	{
		_.extend(this, Modules.fixie);
		
		this.setup_share_links();
		this.draw_clock();
		
		this.setup_fixie({
			els : ".fixie"
		})
	},
	
	setup_share_links : function()
	{
		// setup twitter
		var twitter_params = {
			text : this.model.get('title'),
			related : "runemadsen",
			url : "http://www.runemadsen.com/blog/" + this.model.get('route')
		};
		this.$('a.twitter-share').attr('href', "http://twitter.com/intent/tweet?" + to_query_params(twitter_params));
		
		// setup facebook
		init_facebook();
		var facebook_params = {
			method: 'feed',
      name: twitter_params.text,
      link: twitter_params.url,
      //description: twitter_params.text
		}
		
		this.$('a.facebook-share').click(function() {
			FB.ui(facebook_params);
			return false;
		});
		
		// setup tumblr
		var tumblr_params = {
			url : twitter_params.url,
			name : twitter_params.text
		}
		this.$('a.tumblr-share').attr('href', "http://www.tumblr.com/share/link?" + to_query_params(tumblr_params));
	},
	
	draw_clock : function()
	{
		var graphics = this.$('canvas.clock')[0].getContext("2d");
		graphics.fillStyle = "#2e2d2e";
		graphics.beginPath();
		graphics.arc(6, 6, 6, 0, Math.PI*2, true);
		graphics.closePath();
		graphics.fill();
		
		// draw hour pointer
		var hour_rot = radians(hours_to_rotation(this.model.get("created_at")));
		graphics.strokeStyle = "#ffffff";
		graphics.save(); 
		graphics.translate(6,6);
		graphics.rotate(radians(90));
		graphics.rotate(hour_rot);
		graphics.moveTo(0,0);
		graphics.lineTo(-4,0);
		graphics.stroke();
		graphics.restore();
		
		// draw minute pointer
		var min_rot = radians(minutes_to_rotation(this.model.get("created_at")));
		graphics.strokeStyle = "#ffffff";
		graphics.save(); 
		graphics.translate(6,6);
		graphics.rotate(radians(90));
		graphics.rotate(min_rot);
		graphics.moveTo(0,0);
		graphics.lineTo(-2,0);
		graphics.stroke();
		graphics.restore();
	}

});

/* App
_________________________________________________________ */

var Blog = Backbone.View.extend({
 
	initialize: function()
	{		
		posts.bind('reset', this.add_posts_view, this);
		posts.bind('add', this.add_post_view, this);
		
		$('a[data-reveal]').reveal();
	},
	
	add_posts_view : function()
	{
		posts.each(this.add_post_view);
	},

	add_post_view : function(post)
	{
		var view = new PostView({model: post, el : "#post" + post.get("id")});
	}

});