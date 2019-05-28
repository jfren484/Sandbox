<?php
/**
 * WordPress Feature Support
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2018, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access.
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * Add theme support for WordPress features
 *
 * @since 1.0
 */
function exodus_add_theme_support_wp() {

	// Output HTML5 markup
	add_theme_support( 'html5', array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption' ) );

	// Title Tag
	add_theme_support( 'title-tag' );

	// RSS feeds in <head>
	add_theme_support( 'automatic-feed-links' );

	// Featured images
	add_theme_support( 'post-thumbnails' );

	// Gutenberg wide image option.
	//add_theme_support( 'align-wide' ); // not for Exodus, since has sidebar.

	// Gutenberg color palette.
	// See variables.scss for neutral colors. Default text color not necessary.
	add_theme_support( 'editor-color-palette', array(
		array(
			'name'  => __( 'Main', 'exodus' ),
			'slug'  => 'main',
			'color' => ctfw_customization( 'main_color' ),
		),
		array(
			'name'  => __( 'Accent', 'exodus' ),
			'slug'  => 'accent',
			'color' => ctfw_customization( 'link_color' ),
		),
		array(
			'name'  => __( 'Dark', 'exodus' ),
			'slug'  => 'dark',
			'color' => '#000',      // dark text color, in case want to make text stand out.
		),
		array(
			'name'  => __( 'Light', 'exodus' ),
			'slug'  => 'light',
			'color' => '#777',      // light text color in case want to de-emphasize text.
		),
		array(
			'name'  => __( 'Light Background', 'exodus' ),
			'slug'  => 'light-bg',
			'color' => '#f2f2f2',   // light gray background color to contrast with white background (e.g. paragraph background).
		),
		array(
			'name'  => __( 'White', 'exodus' ),
			'slug'  => 'white',
			'color' => '#fff',      // white text (intended for user over Main Color, such as on a button).
		)
	) );

	// See support-wp.php for custom add_editor_style() with Customizer colors and fonts

	// Gutenberg disable custom font size.
	// User must choose one of the specific sizes (small, regular, large, huge).
	add_theme_support( 'disable-custom-font-sizes' );

}

add_action( 'after_setup_theme', 'exodus_add_theme_support_wp' );
