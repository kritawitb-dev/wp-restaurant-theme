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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '9eLNSknM3lHuAbdMcOg68eSYi2CM2AZVqYxsOqoEQk1TA8Cmar9VKBFmHJC+r5HBYILtOogc1kqhtfwHr+x+vA==');
define('SECURE_AUTH_KEY',  'iAX8qHVbbcopTRSvBCZwR8YZLcMoSf5KgX9cbzU/iaruH9pa9kc+PiB97+1AIiStCBy0wFBioxhWw7arkbb/dQ==');
define('LOGGED_IN_KEY',    'GhPaqI5y3w0QpMd5cHJBqvxx9F1THCt9Ng7bJmAWEQhCECgKYBZv8Vt/8mtPcHODx7RBlxKX/sagsPyz77VfXQ==');
define('NONCE_KEY',        '6WN3qSrA/jPuAnILJFZ1JXCXTE0UcbfnhTnkfI9kGAjXi2OTQ6G6G6PuDc7nCTTswSSzg5TeZSCy0KbSRpYatw==');
define('AUTH_SALT',        'nxGy43FQvT877m20TDTF7pPXhhcWNMjyts/fCFnOrjfGpeam5w9JI/zaGJVx38HDOY2ajSF/9dqZFHmU3T7WZg==');
define('SECURE_AUTH_SALT', 'vLS+jlRdFgnIrEHdye0iipK1cb4CuqN/oIEqrkt+D/Auq1RbHaT5D9Io53T5QNDRJXyXEyOp0WwaQJhMYn8E7A==');
define('LOGGED_IN_SALT',   's39cJxfM+Th5c5USmWVJS1SKVEHC4jN7dItBm1gG7DLWC438Q0HMQRxMDRGgJ3FmJjAcDQJbVabi0DOcsWBTTw==');
define('NONCE_SALT',       'xJtYetRYCT34vYS8txX/FAiRQAtjCy/WsXgYwkhxDNcp2HERlOCGINrfhCd2IdnkBe/BMb4BkRKBz82MaLotVw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


define('WE_DEBUG', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
