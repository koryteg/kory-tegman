// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
//GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui-min
//= require h5bp
//= require charges
//= require shscripts/shCore
//= require shscripts/shBrushXml
//= require shscripts/shBrushCss
//= require shscripts/shBrushJScript
//= require redactor-rails
//= require jquery.instagram

(function ($) {
	$(function() {
	SyntaxHighlighter.all();
	currentPageNav();
	$(".instagram").instagram({
	    userId: '2734834',
		accessToken: '2734834.1b3f753.bc8c93250e2b40aeb3216f8aebfb6bb6',
		show : 9
	  });
});

function currentPageNav() {
	var url = window.location.pathname;
	$("#head-right ul li a").each(function(){
		if($(this).attr("href") == url){
			$(this).addClass("onpage");
		}
	});
	
}
})(jQuery);