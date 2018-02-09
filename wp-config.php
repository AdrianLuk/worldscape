<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'worldscape360');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'B_$P7Gfkw8J9INARvhv/oT_?FE3wi`^o~Ut.kknRI.[pwfXP!<Zb9j+%uq1XGD7_');
define('SECURE_AUTH_KEY',  'ap1XX`h(1z;t}1snoB?M<.c0K$+w!3I[GPb+fC6uwoEnN&8.26y>1/U5t~^/NA0+');
define('LOGGED_IN_KEY',    ' kHr4YmW~SNr$1j)@(%MsQGM!}!+}Heau9c]2oL7<POfucMO`fY%_#KL/5Ophy/Z');
define('NONCE_KEY',        'l&FCsZ;5{E,jYq{@c|{-q+`1>+uH[?u+]&zh5n8Q?hEk2]KL-7<t57v-a~/fa@?V');
define('AUTH_SALT',        'vC+l*y#qVEEU*n=5=AQ,+[ZTnpX& %Rw`m|~#C!ng,~X!b4-8/4a52S1b=j g4aq');
define('SECURE_AUTH_SALT', '<tZsW]@y@I(fw=I/I:F[UrD#*6,=^FCk;1&-d04ACgShp!;_#`.z8T@5P<-,K ?q');
define('LOGGED_IN_SALT',   's2qvWZ~j Sa@it^UPigtz<+QAPxBT=G~$ys/UaU`3Lo,Dqgo)#X=cal/F7pX|R1a');
define('NONCE_SALT',       't%R|t);?!7EI]:e7AXZ!O{8gQJOi*AG7;.k!fs9ZzV.kFo$E,|J`*2*G;Z.#jr-;');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
