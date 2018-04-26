<?php
function my_theme_enqueue_styles() {

    $parent_style = 'parent-style'; // This is 'pt-magazine style' for the PT Magazine theme.

    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style ),
        wp_get_theme()->get('Version')
    );
}
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );

//load Worldscape theme includes files instead of pt-magazine's. comment out last line of parent theme's functions file for including the main file.
require_once ( get_stylesheet_directory() ) . '/includes/main.php';

add_theme_support( 'infinite-scroll', array(
    'container' => 'content',
    'footer'    => 'page',
) );

function my_login_logo() { ?>
    <style type="text/css">
        #login h1 a, .login h1 a {
            background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/images/logo-transparent.png);
		height:65px;
		width:320px;
		background-size: contain;
		background-repeat: no-repeat;
        	padding-bottom: 30px;
        }
    </style>
<?php }
add_action( 'login_enqueue_scripts', 'my_login_logo' );

function my_login_logo_url() {
    return home_url();
}
add_filter( 'login_headerurl', 'my_login_logo_url' );

function my_login_logo_url_title() {
    return 'Worldscape 360';
}
add_filter( 'login_headertitle', 'my_login_logo_url_title' );