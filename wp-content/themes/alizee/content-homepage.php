<?php
/**
 * @package Alizee
 */
?>

<?php if (has_post_thumbnail()) : ?>

    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    
        <div class="entry-thumb">
    	<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" >				
		<?php the_post_thumbnail('alizee-thumb'); ?>
    	</a>    		
        </div>	

    <?php // if (( get_theme_mod('home_layout') == 'one_col' ) && ( has_post_thumbnail() )) : //check if we have a thumbnail, if not add a class to the content ?>
        <div class="post-content">
    <?php // else : ?>
    	<!--<div class="post-content no-thumb">-->
    <?php // endif; ?>	
	    <span class="cat-link">
		<?php
		$category = get_the_category();
		if ($category[0]) {
		    echo '<a href="' . esc_url(get_category_link($category[0]->term_id)) . '">' . esc_attr($category[0]->cat_name) . '</a>';
		}
		?>
	    </span>
	    <header class="entry-header">
		<?php the_title(sprintf('<h1 class="entry-title"><a href="%s" rel="bookmark">', esc_url(get_permalink())), '</a></h1>'); ?>

		<?php if ('post' == get_post_type()) : ?>
    		<!--<div class="entry-meta">-->
		    <?php // alizee_posted_on(); ?>
    		<!--</div>-->
		<?php endif; ?>
	    </header><!-- .entry-header -->
	</div>
    </article>
<?php endif; ?>