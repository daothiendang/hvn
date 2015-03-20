var $ = jQuery;

$(document).ready(function($) {
    // top dropdown
    $('#fixed_menu img').click(function() {
	$('#fixed_menu ul li:not(.active)').slideToggle();
    });
    
    // add icon to submenu of main menu
    $('#menu-main-menu .sub-menu').each(function() {
	var submenuText = $(this).prev().text();
	$('.sub-menu').prepend('<li><span>' + submenuText + '</span></li>');
    });
    
    // menu animation when scrolling down
    $(document).scroll(function(){
	var topPositionY  = $(this).scrollTop();
	var menuPositionY = $('#site-navigation').offset().top + $('#site-navigation').height();
	$('#test').text(menuPositionY);
	if (topPositionY > menuPositionY) {
	    if ($('#fixed_menu').find($('#menu-main-menu')).length < 1) {
		$('#top_navigation, #fixed_menu #top_arrow, .sub-menu').hide();
		$('#logo').show();
		$('#fixed_menu').append($('#menu-main-menu').clone());
	    }
	} else {
	    $('#logo').hide();
	    $('#top_navigation, #fixed_menu #top_arrow').show();
	    $('#fixed_menu #menu-main-menu').remove();
	}
    });
    
    // display submenu when user scroll down, and hover the main menu on top
    $(document).on('hover', '#fixed_menu > #menu-main-menu > li > a', function(){
	if ($(this).next().hasClass('sub-menu')) {
	    $(this).next().show();
	}
    });
    $(document).on('mouseleave', 'ul.sub-menu', function(){
    //$('ul.sub-menu').mouseover(function(){
	$('ul.sub-menu').hide();
	//alert('click');
    });
    
    // search icon
    $('#icon_search').click(function() {
	$('#search_form form').slideToggle('fast');
    });
    $('#search_form .search-field').focusout(function(){
	$('#search_form form').hide();
    });
});