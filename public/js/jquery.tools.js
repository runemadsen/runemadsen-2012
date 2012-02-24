/* Reveal
---------------------------------------------------- */

(function($){

  $.fn.reveal = function() {
				
		this.hover(function() {
			
			var t = $(this);
			
			// show element
			var el = $("#" + t.attr('data-reveal'));
			el.slideDown(400);
			
			// fade down link
			t.fadeTo(200, 0.2);
			
			el.parent().mouseleave(function() {
			  el.slideUp(400);
				t.fadeTo(200, 1);
			});
			
		});
		
  };

})(jQuery);