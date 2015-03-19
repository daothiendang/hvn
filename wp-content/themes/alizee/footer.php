<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package Alizee
 */
?>

</div><!-- #content -->

<footer id="colophon" class="site-footer" role="contentinfo">
    <div class="site-info">
	<div class="container">
	    <?php wp_nav_menu( array( 'theme_location' => 'footer' ) ); ?>
	</div>
    </div>
</footer>
</div>

<?php get_sidebar('footer'); ?>

<?php wp_footer(); ?>

</body>
</html>
