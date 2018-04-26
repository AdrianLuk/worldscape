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

<h1>THE LATEST</h1>
<section class="main-news-section">



<?php
$highlighted_cat = pt_magazine_get_option( 'highlighted_news_category' );
?>
<div class="main-news-full-row main-news-col-4">

	<?php 

	$highlighted_args = array(
			                'posts_per_page'		=> 16,
			                'no_found_rows' 		=> true,
							'post__not_in'          => get_option( 'sticky_posts' ),
							'category_name'			=> 'featured',
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
							<!-- <span class="posted-date"><?php echo esc_html( get_the_date() ); ?></span> -->
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
	                    <!-- <?php echo esc_html__( 'Widgets of Home Page Widget Area will be displayed here. Go to Appearance->Widgets in admin panel to add widgets. All these widgets will be replaced when you start adding widgets.', 'pt-magazine' ); ?> -->
	                </p>

			    	<?php

			   	endif;

			endif; ?>

		</main><!-- #main -->

	</div><!-- #primary -->

<?php

// do_action( 'pt_magazine_action_sidebar' );

get_footer();
