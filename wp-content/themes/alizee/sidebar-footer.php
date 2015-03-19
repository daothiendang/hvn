<?php
/**
 *
 * @package Alizee
 */
?>

<div id="sidebar-footer" class="footer-widget-area clearfix" role="complementary">
    <div class="container">
	<?php do_action('before_sidebar'); ?>
	<?php if (is_active_sidebar('sidebar-3')) { ?>
	    <div class="footer_left col-sm-6 col-md-5 col-lg-4"> 
		<?php dynamic_sidebar('sidebar-3');?>
	    </div>
	<?php } ?>
	
	<?php if (is_active_sidebar('sidebar-4')) { ?>
	    <div class="footer_right col-sm-6 col-md-7 col-lg-8">
		<?php dynamic_sidebar('sidebar-4'); ?>
	    </div> 
	<?php } ?>
	
	<?php // if (is_active_sidebar('sidebar-5')) { ?>
	    <!--<div class="sidebar-column col-md-4 col-sm-4">-->
		<?php // dynamic_sidebar('sidebar-5'); ?>
	    <!--</div>-->
	<?php // } ?>
    </div>	
</div>