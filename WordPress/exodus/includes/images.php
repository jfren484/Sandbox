<?php
/**
 * Image Functions
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

/***********************************************
 * IMAGE SIZES
 ***********************************************/

/**
 * Add image sizes
 *
 * @since 1.0
 */
function exodus_image_sizes() {

	/*********************************
	 * THUMBNAILS
	 *********************************/

	// Default Thumbnail (post-thumbnail)
	// Shown by post title on short and full entries
	// (large enough for spanning width of screen on phones; shown smaller on desktop)
	set_post_thumbnail_size( 450, 450, true ); // crop for exact size

	// Small Thumbnail
	// Used in widgets: 110x110 on homepage, 60x60 in sidebars
	// 220x220 looks good on both Retina and standard displays
	add_image_size( 'exodus-thumb-small', 220, 220, true ); // crop for exact size

	/*********************************
	 * HEADER IMAGES
	 *********************************/

	// Slider Image (Widget)
	add_image_size( 'exodus-slide', 1700, 500, true ); // crop for exact size

	// Banner Image
	// Featured image to appear at the top of pages
	add_image_size( 'exodus-banner', 1700, 350, true ); // crop for exact size

	/*********************************
	 * RECTANGULAR IMAGES
	 *********************************/

	// Large Thumbnail (Highlight Widget, Gallery Widget - Large)
	// Just wide enough for one widget per row while responsive
	add_image_size( 'exodus-rect-large', 750, 500, true ); // crop for exact size

	// Medium Thumbnail (Gallery Widget - Medium)
	add_image_size( 'exodus-rect-medium', 400, 267, true ); // crop for exact size

	// Small Thumbnail (Gallery Widget - Small)
	add_image_size( 'exodus-rect-small', 240, 160, true ); // crop for exact size

}

add_action( 'after_setup_theme', 'exodus_image_sizes', 9 ); // before exodus_add_theme_support_framework() so it can use ctfw_image_size_dimensions()

/**
 * Set content width
 *
 * This affect maximum embed and image sizes.
 * On front end CSS handles most of this but content editor also uses.
 *
 * Keep an eye on this for possible future add_theme_support() implementation:
 * http://core.trac.wordpress.org/ticket/21256
 *
 * @since 1.0
 * @global int $content_width
 */
function exodus_set_content_width() {

	global $content_width;

	if ( ! isset( $content_width ) ) {

		// Full page content
		$content_width = 1170;

		// Sideabar is used
		if ( exodus_sidebar_enabled() ) {
			$content_width = 780;
		}

	}

}

add_action( 'wp', 'exodus_set_content_width' );

