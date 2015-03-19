<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'hvn_mmp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '4x1!pEZZM`WMlG~<#Gr.p<ChinWKc|-X]])TWrKYbnk=pHdbvp,HW~C,3BzlNf%c');
define('SECURE_AUTH_KEY',  'EQ|7f/0el_RC&Xqro*VM+oX1,?2+7u6-KgTn!kU1?^Hc3fTed=;Zop(ZUAe6d|GN');
define('LOGGED_IN_KEY',    '|5`3(4Gdfs5k)*N%.V|quPmGQ+ jEQX.+3N?z48Bx-97j~eF}P?Zo`[}a}DX4So5');
define('NONCE_KEY',        'PSR@1-NX2z!(C^WBjfM-fyr&96!<~XKa+~E2gjz7Dq;PSm%Se3HdNb~Dr/=yPFI<');
define('AUTH_SALT',        ',9,t+?,w46,fWd+u-h;6C|a`OyvA5<bTuqw$BIU[<AMjJkEhR+KgBHpv,5P5`HyZ');
define('SECURE_AUTH_SALT', '_b7LeD7]A!,LrM^v1=v%cP.~A,]uVp@qAS|H0Zh0kR[f_XCB]%J^A|Mz!?0mIgLz');
define('LOGGED_IN_SALT',   '--&Od#yXU.,(HE.2{O,/$U7 9tR#WD]n7biM35FwKNk%~nFu{|a7mI.AAS+-fZ&-');
define('NONCE_SALT',       'f+!eeWK3+lbry[kvl;Q;g89rf@zn%CF<p?6k$zk-hG+,%R[1kQA6I%n-L{lm.:6^');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

define( 'WP_ALLOW_MULTISITE', true );
define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', false);
define('DOMAIN_CURRENT_SITE', 'localhost');
define('PATH_CURRENT_SITE', '/hvn_mmp/');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
