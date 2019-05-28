<?php
/**
 * <body> Functions
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2016, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/*******************************************
 * BODY CLASSES
 *******************************************/

/**
 * Add helper classes to <body>
 *
 * IMPORTANT: Do not do client detection (mobile, browser, etc.) here.
 * Instead, do in theme's JS so works with caching plugins.
 *
 * Note: This is used by ctfw-editor-styles too, for Gutenberg in admin.
 *
 * @since 1.0
 * @param array $classes Classes currently being added to body tag
 * @return array Modified classes
 */
function exodus_add_body_classes( $classes = array() ) {

	// Frontend only (not editor).
	if ( ! is_admin() ) {

		// Fonts
		$fonts_areas = array( 'logo_font', 'tagline_font', 'heading_font', 'menu_font', 'body_font' );
		foreach ( $fonts_areas as $font_area ) {

			$font_name = ctfw_customization( $font_area );
			$font_name = sanitize_title( $font_name );

			$font_area = str_replace( '_', '-', $font_area );

			$classes[] = 'exodus-' . $font_area . '-' . $font_name;

		}

		// Logo
		if ( 'image' == ctfw_customization( 'logo_type' ) && ctfw_customization( 'logo_image' ) ) {
			$classes[] = 'exodus-has-logo-image';
		} else {
			$classes[] = 'exodus-no-logo-image';
		}

		// Logo text lowercase
		if ( ctfw_customization( 'logo_text_lowercase' ) ) { // don't detect logo type of text, because if image and no upload, reverts to text
			$classes[] = 'exodus-has-logo-text-lowercase';
		} else {
			$classes[] = 'exodus-no-logo-text-lowercase';
		}

		// Tagline below logo
		if ( ctfw_customization( 'tagline_under_logo' ) ) {
			$classes[] = 'exodus-has-tagline-under-logo';
		} else {
			$classes[] = 'exodus-no-tagline-under-logo';
		}

		// Tagline on right
		if ( 'tagline' == ctfw_customization( 'header_right' ) ) {
			$classes[] = 'exodus-has-tagline-right';
		} else {
			$classes[] = 'exodus-no-tagline-right';
		}

		// Showing Banner
		$has_banner = false;
		$banner = exodus_banner_data();
		if ( $banner['page'] ) { // banner page found
			$banner_src = wp_get_attachment_image_src( get_post_thumbnail_id( $banner['page']->ID ), 'exodus-banner' );
			$banner_url = ! empty( $banner_src[0] ) ? $banner_src[0] : false;
			if ( $banner_url ) {
				$has_banner = true;
			}
		}
		if ( $has_banner ) {
			$classes[] = 'exodus-has-banner';
		} else {
			$classes[] = 'exodus-no-banner';
		}

		// WordPress 4.8 or earlier (used for MediaElement.js back-compat styling)
		if ( version_compare( $GLOBALS['wp_version'], '4.8', '<=' ) ) {
			$classes[] = 'exodus-wp-4-8-or-less';
		}

	}

	// Rounded Corners
	if ( ctfw_customization( 'rounded_corners' ) ) {
		$classes[] = 'exodus-rounded';
	} else {
		$classes[] = 'exodus-not-rounded';
	}

	return $classes;

}

add_filter( 'body_class', 'exodus_add_body_classes' );
