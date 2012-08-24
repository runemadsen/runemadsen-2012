$(function(){

var MailApp = Backbone.View.extend({
  
	initialize: function()
	{		
		$("h1[data-cryptic]").html("<a href='mailto:"+this.get_cryptic()+"'>"+this.get_cryptic()+"</a>");
	},
	
	get_cryptic: function()
	{
		return "rune" + "@" + "runemadsen" + "." + "c" + "o" + "m";
	}

});

window.app = new MailApp();

});