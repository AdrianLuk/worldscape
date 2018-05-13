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

//Changed login logo from wordpress logo to site logo
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

//Changed link on login page to point to home page
function my_login_logo_url() {
    return home_url();
}
add_filter( 'login_headerurl', 'my_login_logo_url' );

//Changed title of login logo url ie. text when logo is hovered
function my_login_logo_url_title() {
    return 'Worldscape 360';
}
add_filter( 'login_headertitle', 'my_login_logo_url_title' );

//Redirect users back to homepage after logging out
add_action('wp_logout','auto_redirect_after_logout');
function auto_redirect_after_logout(){
wp_redirect( home_url() );
exit();
}

// Redirect users back to homepage after logging in
add_action('wp_login','auto_redirect_after_login');
function auto_redirect_after_login(){
wp_redirect( home_url() );
exit();
}

//Change howdy to custom message
function howdy_message($translated_text, $text, $domain) {
$new_message = str_replace('Howdy', 'Welcome', $text);
return $new_message;
}
add_filter('gettext', 'howdy_message', 10, 3);

//remove wordpress logo on admin bar
function annointed_admin_bar_remove() {
        global $wp_admin_bar;

        /* Remove their stuff */
        $wp_admin_bar->remove_menu('wp-logo');
}
add_action('wp_before_admin_bar_render', 'annointed_admin_bar_remove', 0);