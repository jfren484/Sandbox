<?php
/**
 * Enqueue Stylesheets
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2015, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/**
 * Enqueue stylesheets
 *
 * @since 1.0
 */
function exodus_enqueue_styles() {

	// Google Fonts
	$fonts = array(
		ctfw_customization( 'logo_font' ),
		ctfw_customization( 'heading_font' ),
		ctfw_customization( 'menu_font' ),
		ctfw_customization( 'body_font' )
	);
	$google_fonts_url = ctfw_google_fonts_style_url( $fonts, ctfw_customization( 'font_subsets' ) );
	if ( $google_fonts_url ) {
		wp_enqueue_style( 'exodus-google-fonts', $google_fonts_url, false, null ); // null - don't mess with Google Fonts URL by adding version
	}

	// Elusive Icon Font - http://aristeides.com/elusive-iconfont/
	// (before main so can override styles when necessary)
	wp_enqueue_style( 'elusive-webfont', get_theme_file_uri( CTFW_THEME_CSS_DIR . '/elusive-webfont.css' ), false, CTFW_THEME_VERSION );  // bust cache on theme update

	// Main Stylesheet
	wp_enqueue_style( 'exodus-style', get_stylesheet_uri(), false, CTFW_THEME_VERSION );  // bust cache on theme update

	// Responsive Stylesheet
	// (after main since it overrides styles)
	// IMPORTANT: JavaScript will handle removing this if "Full Site" is forced -- must be client-side to work with caching plugins
	wp_enqueue_style( 'exodus-responsive', get_theme_file_uri( CTFW_THEME_CSS_DIR . '/responsive.css' ), false, CTFW_THEME_VERSION );  // bust cache on theme update

	// Tooltipster base styles
	// style.css and color stylesheets contain the .exodus-tooltipster theme
	// Event calendar template and single event (recurrence tooltip)
	if (
		is_page_template( CTFW_THEME_PAGE_TPL_DIR . '/events-calendar.php' )
		|| is_singular( 'ctc_event' )
	) {
		wp_enqueue_style( 'tooltipster', get_theme_file_uri( CTFW_THEME_CSS_DIR . '/tooltipster.css' ), false, CTFW_THEME_VERSION );  // bust cache on theme update
	}

	// Color Scheme
	if ( $color_url = ctfw_color_style_url() ) {
		wp_enqueue_style( 'exodus-color', $color_url, false, CTFW_THEME_VERSION ); // bust cache on theme update
	}

}

add_action( 'wp_enqueue_scripts', 'exodus_enqueue_styles' ); // front-end only (and yes, wp_enqueue_scripts is correct for styles)
