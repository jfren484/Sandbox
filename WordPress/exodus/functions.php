<?php
/**
 * Theme functions file
 *
 * This loads Church Theme Framework and includes files having functions, classes and other code used by the theme.
 *
 * If you want to edit code, it is best to use a child theme so changes are not lost after an update (see guides).
 *
 * @package   Exodus
 * @copyright Copyright (c) 2014, ChurchThemes.com
 * @link      https://churchthemes.com/themes/exodus
 * @license   http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/**
 * Load framework
 */
require_once get_template_directory() . '/framework/framework.php'; // do this before anything

/**
 * Includes to load
 */
$exodus_includes = array(

	// Frontend or Admin
	'always' => array(

		// Functions
		CTFW_THEME_INC_DIR . '/banner.php',
		CTFW_THEME_INC_DIR . '/body.php',
		CTFW_THEME_INC_DIR . '/customize.php',
		CTFW_THEME_INC_DIR . '/customize-defaults.php',
		CTFW_THEME_INC_DIR . '/content-types.php',
		CTFW_THEME_INC_DIR . '/fonts.php',
		CTFW_THEME_INC_DIR . '/gallery.php',
		CTFW_THEME_INC_DIR . '/head.php', // Customizer needs it
		CTFW_THEME_INC_DIR . '/icons.php',
		CTFW_THEME_INC_DIR . '/images.php',
		CTFW_THEME_INC_DIR . '/loop-after-content.php',
		CTFW_THEME_INC_DIR . '/posts.php',
		CTFW_THEME_INC_DIR . '/nav-menus.php',
		CTFW_THEME_INC_DIR . '/sidebars.php',
		CTFW_THEME_INC_DIR . '/support-ctc.php',
		CTFW_THEME_INC_DIR . '/support-framework.php',
		CTFW_THEME_INC_DIR . '/support-wp.php',
		CTFW_THEME_INC_DIR . '/template-tags.php',

	),

	// Admin Only
	'admin' => array(

		// Functions
		CTFW_THEME_ADMIN_DIR . '/meta-boxes.php',

	),

	// Frontend Only
	'frontend' => array (

		// Functions
		CTFW_THEME_INC_DIR . '/enqueue-styles.php',
		CTFW_THEME_INC_DIR . '/enqueue-scripts.php',

	),

);

/**
 * Filter includes
 */
$exodus_includes = apply_filters( 'exodus_includes', $exodus_includes ); // make filterable

/**
 * Load includes
 */
ctfw_load_includes( $exodus_includes );
