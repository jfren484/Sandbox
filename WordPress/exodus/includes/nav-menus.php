<?php
/**
 * Navigation Menu Functions
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/**********************************
 * CUSTOM MENUS
 **********************************/

/**
 * Register header and footer menu locations
 *
 * @since 1.0
 */
function exodus_register_menus() {

	// Register top menu location (top-most bar)
	register_nav_menu( 'top', _x( 'Top', 'menu location', 'exodus' ) );

	// Register header menu location (main menu with dropdowns)
	register_nav_menu( 'header', _x( 'Header', 'menu location', 'exodus' ) );

	// Register footer menu location
	register_nav_menu( 'footer', _x( 'Footer', 'menu location', 'exodus' ) );

}

add_action( 'init', 'exodus_register_menus' );
