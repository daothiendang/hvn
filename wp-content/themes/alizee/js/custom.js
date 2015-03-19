var $ = jQuery;

$(document).ready(function($) {
    // top dropdown
    $('#fixed_menu img').click(function() {
	$('#fixed_menu ul li:not(.active)').slideToggle();
    });
    
    // menu animation
    $(document).scroll(function(){
	var topPositionY  = $(this).scrollTop();
	var menuPositionY = $('#site-navigation').offset().top + $('#site-navigation').height();
	$('#test').text(menuPositionY);
	if (topPositionY > menuPositionY) {
	    if ($('#fixed_menu').find($('#menu-main-menu')).length < 1) {
		$('#top_navigation, #fixed_menu img, .sub-menu').hide();
		$('#top_leaderboard').show();
		$('#fixed_menu').append($('#menu-main-menu').clone());
	    }
	} else {
	    $('#top_leaderboard').hide();
	    $('#top_navigation, #fixed_menu img').show();
	    $('#fixed_menu #menu-main-menu').remove();
	}
    });
    
    // add icon to submenu of main menu
    $('#menu-main-menu .sub-menu').each(function() {
	var submenuText = $(this).prev().text();
	$('.sub-menu').prepend('<li><span>' + submenuText + '</span></li>');
    });
    
    // search icon
    $('#icon_search').click(function() {
	$('#search_form form').slideToggle('fast');
    });
    $('#search_form .search-field').focusout(function(){
	$('#search_form form').hide();
    });
});