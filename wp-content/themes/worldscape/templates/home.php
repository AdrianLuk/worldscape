<?php
/**
 * Template Name: Home
 *
 * This is the most main template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package PT_Magazine
 */
// Bail if not home page.
if ( ! is_page_template( 'templates/home.php' )  ) {
	return;
}

get_header(); ?>
<section class="main-news-section">
<div class="news-section-row">
<div class="main-news-left <?php echo $full_slider_class; ?>">

	<?php



	$slider_args = array(
		                'posts_per_page' 		=> 5,
		                'no_found_rows' 		=> true,
		                'post__not_in'          => get_option( 'sticky_posts' ),
		                'ignore_sticky_posts'   => true,
				        'meta_query'  			=> array(
										            array( 'key' => '_thumbnail_id' ),
										        ),
	            	);

	if ( absint( $slider_cat ) > 0 ) {

	    $slider_args['cat'] = absint( $slider_cat );

	}

	$slider_posts = new WP_Query( $slider_args );

	if ( $slider_posts->have_posts() ) : ?>

		<div class="main-slider" data-slick='<?php echo $slick_args_encoded; ?>'>

			<?php

	        while ( $slider_posts->have_posts() ) :

	            $slider_posts->the_post(); ?>

	            <div class="item">

		            <article class="bigger-post">

		            	<?php

		            	// if ( true === $slider_overlay ) {

		            	    $overlay_class = 'post-image overlay';

		            	// }else{

		            	//     $overlay_class = 'post-image';

		            	// } ?>

		            	<div class="article-content-wrap">

							<figure class="<?php echo $overlay_class; ?>">
								<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( $slider_thumb ); ?></a>
							</figure><!-- .post-image -->

							<div class="post-content">
							 <span class="posted-date"><?php echo esc_html( get_the_date() ); ?></span>
							 <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
							</div><!-- .post-content -->

		                </div>

		            </article>

		        </div>

	            <?php

	        endwhile;

	        wp_reset_postdata(); ?>

	    </div>

	    <?php

	endif; ?>

</div><!-- .main-news-left -->
<div class="main-news-right">

	<?php

	$featured_args = array(
		                'posts_per_page'     	=> 2,
		                'no_found_rows' 		=> true,
		                'post__not_in'          => get_option( 'sticky_posts' ),
		                'ignore_sticky_posts'   => true,
				        'meta_query'  	        => array(
									            	array( 'key' => '_thumbnail_id' ),
									            ),
	            	);

	if ( absint( $featured_cat ) > 0 ) {

	    $featured_args['cat'] = absint( $featured_cat );

	}

	$featured_posts = new WP_Query( $featured_args );

	if ( $featured_posts->have_posts() ) :

			$feat_count = 1;

	        while ( $featured_posts->have_posts() ) :

	            $featured_posts->the_post(); ?>

				<article class="smaller-post full-width-post">

					<div class="article-content-wrap">

						<figure class="post-image overlay">
							<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('pt-magazine-featured-full'); ?></a>
						</figure><!-- .post-image -->

						<div class="post-content">
							<span class="posted-date"><?php echo esc_html( get_the_date() ); ?></span>
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
						</div><!-- .post-content -->

					</div>

				</article>

	            <?php

	        endwhile;

	        wp_reset_postdata();

	endif; ?>

</div><!-- .main-news-right -->
</div>



<?php
$highlighted_cat = pt_magazine_get_option( 'highlighted_news_category' );
?>
<div class="main-news-full-row main-news-col-3">

	<?php 

	$highlighted_args = array(
			                'posts_per_page'		=> 3,
			                'no_found_rows' 		=> true,
			                'post__not_in'          => get_option( 'sticky_posts' ),
			                'ignore_sticky_posts'   => true,
			                'meta_query'  			=> array(
											            array( 'key' => '_thumbnail_id' ),
											        ),
	            		);

	if ( absint( $highlighted_cat ) > 0 ) {

	    $highlighted_args['cat'] = absint( $highlighted_cat );
	    
	} 

	$highlighted_posts = new WP_Query( $highlighted_args );

	if ( $highlighted_posts->have_posts() ) : ?>

		<div class="news-row-wrapper">

			<?php

	        while ( $highlighted_posts->have_posts() ) :
	            
	            $highlighted_posts->the_post(); ?>

            	<article class="news-post">
            		<div class="article-content-wrap">
	            		<figure class="post-image overlay">
	                    	<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('pt-magazine-tall'); ?></a>
	                    </figure><!-- .post-image -->

	                    <div class="post-content">
							<span class="posted-date"><?php echo esc_html( get_the_date() ); ?></span>
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
	                    </div><!-- .post-content -->
	                </div>
            	</article><!-- .news-post -->

	            <?php

	        endwhile; 

	        wp_reset_postdata(); ?>

	    </div>

	    <?php

	endif; ?>

</div><!-- .main-news-full-row -->

</section>

	<div id="primary" class="content-area">

		<main id="main" class="site-main" role="main">

			<?php

			if ( is_active_sidebar( 'home-page-widget-area' ) ) :

				dynamic_sidebar( 'home-page-widget-area' );

			else:

	            if ( current_user_can( 'edit_theme_options' ) ) : ?>

	                <p>
	                    <?php echo esc_html__( 'Widgets of Home Page Widget Area will be displayed here. Go to Appearance->Widgets in admin panel to add widgets. All these widgets will be replaced when you start adding widgets.', 'pt-magazine' ); ?>
	                </p>

			    	<?php

			   	endif;

			endif; ?>

		</main><!-- #main -->

	</div><!-- #primary -->

<?php

do_action( 'pt_magazine_action_sidebar' );

get_footer();
