<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package Alizee
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php wp_title('|', true, 'right'); ?></title>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
	
	<?php if (get_theme_mod('site_favicon')) : ?>
	    <link rel="shortcut icon" href="<?php echo esc_url(get_theme_mod('site_favicon')); ?>" />
	<?php endif; ?>
	    
	<?php wp_head(); ?>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory');?>/css/font_face.css">
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory');?>/css/custom.css">
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory');?>/css/custom1.css">
	<script type="text/javascript" src="<?php bloginfo('stylesheet_directory');?>/js/custom.js">"></script>
    </head>


    <body <?php body_class(); ?>>

	<div id="page" class="hfeed site">
	    <a class="skip-link screen-reader-text" href="#content"><?php _e('Skip to content', 'alizee'); ?></a>

	    <?php if (get_header_image()) : ?>
		<header id="masthead" class="site-header has-banner" role="banner">
	    <?php else : ?>
    		<header id="masthead" class="site-header" role="banner">
	    <?php endif; ?>
		    <!--<div class="container">-->
			<div id="fixed_menu">
			    <a href="#" id="logo_link">
				<img id="logo" src="<?php bloginfo('stylesheet_directory');?>/images/header_logo_weekly_review.png"/>
			    </a>
			    <ul id="top_navigation">
				<li class="active"><a href="#">NEIGHBORHOOD</a></li>
				<li><a href="#">NEIGHBORHOOD1</a></li>
				<li><a href="#">NEIGHBORHOOD2</a></li>
				<li><a href="#">NEIGHBORHOOD3</a></li>
			    </ul>
			    <img id="top_arrow" src="<?php bloginfo('stylesheet_directory');?>/images/icon_top_arrow.jpg"/>
			</div>
			<div class="site-branding">
			    <?php if (get_theme_mod('site_logo')) : ?>
    			    <a href="<?php echo esc_url(home_url('/')); ?>" title="<?php bloginfo('name'); ?>"><img src="<?php echo esc_url(get_theme_mod('site_logo')); ?>" alt="<?php bloginfo('name'); ?>" /></a>
			    <?php else : ?>
				<?php if (display_header_text()) : ?>
				    <h1 class="site-title"><a href="<?php echo esc_url(home_url('/')); ?>" rel="home"><?php bloginfo('name'); ?></a></h1>
				    <h2 class="site-description"><?php bloginfo('description'); ?></h2>
				<?php endif; ?>
			    <?php endif; ?>
			</div>
			<div id="header_container">
			    <?php if (dynamic_sidebar('sidebar-0')) : ?>
			    <?php endif; ?>
			    <?php if (has_nav_menu('social')) : ?>
				<nav class="social-navigation">
				    <div class="social_title">SUBCRIBE TODAY!</div>
				    <?php wp_nav_menu(array('theme_location' => 'social', 'link_before' => '<span class="screen-reader-text">', 'link_after' => '</span>', 'menu_class' => 'menu clearfix', 'fallback_cb' => false)); ?>
				</nav>
				<!--<div class="social-toggle"><i class="fa fa-facebook"></i></div>-->
			    <?php endif; ?>
			</div>
		    
		    <nav id="site-navigation" class="main-navigation" role="navigation">
			<div class="container">
			    <button class="menu-toggle btn"><i class="fa fa-bars"></i></button>
			    <?php wp_nav_menu(array('theme_location' => 'primary')); ?>
			    <div id="search_form">
				<?php get_search_form(); ?>
				<div id="icon_search"></div>
			    </div>
			</div>
		    </nav>
		    <?php if (is_home()) : ?>
    		    <!--<div class="sidebar-toggle"><i class="fa fa-plus"></i></div>-->
		    <?php endif; ?>
		</header>

		<div id="content" class="site-content container">