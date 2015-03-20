
//Masonry init
//jQuery(function ($) {
//    var $container = $('.home-layout');
//    $container.imagesLoaded(function () {
//	$container.masonry({
//	    itemSelector: '.hentry',
//	    isAnimated: true,
//	    isFitWidth: true,
//	    animationOptions: {
//		duration: 500,
//		easing: 'linear',
//	    }
//	});
//    });
//});

//Masonry init
jQuery(window).load(function () {
    var $container = jQuery('.home-layout');
    $container.masonry({
	itemSelector: '.hentry',
	isAnimated: true,
	animationOptions: {
	    duration: 500,
	    easing: 'linear'
	}
    });
});