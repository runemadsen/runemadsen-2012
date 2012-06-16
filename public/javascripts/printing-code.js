$(function(){
	
	$("h2").each(function() {
	  
	  var org = $(this).text();
	  alias = org.replace(/\ /g, "-").replace(/:/g, "").toLowerCase();
	
	  // create anchor
	  $("<a id='"+alias+"'></a>").insertBefore(this);
	
	  // create link in toc ul
		$("ul#toc").append("<li><a href='#"+alias+"'>"+org+"</a></li>")
	});
});