<?php
/**
 * Theme Customizer Defaults
 *
 * Define defaults for Customizer and make available to framework for use with framework functions.
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

/**
 * Default Values
 *
 * Make defaults available to framework for use anywhere with ctfw_customize_defaults().
 *
 * Assists in setting defaults when adding settings and with getting defaults for output.
 * These apply only to options array, not theme_mod or anything else.
 *
 * @since 1.0
 * @return array Default values
 */
function exodus_customize_defaults() {

	// Default values
	$defaults = array(

		/**
		 * Colors & Styling
		 */

		'color' => array(
			'value'		=> 'light',
			'no_empty'	=> true
		),

		'main_color' => array(
			'value'		=> '#3c9ca7',
			'no_empty'	=> true
		),

		'link_color' => array(
			'value'		=> '#3c9ca7',
			'no_empty'	=> true
		),

		'rounded_corners' => array(
			'value'		=> true,
			'no_empty'	=> false
		),

		/**
		 * Google Fonts
		 */

		'logo_font' => array(
			'value'		=> 'Roboto',
			'no_empty'	=> true
		),

		'tagline_font' => array(
			'value'		=> 'Roboto',
			'no_empty'	=> true
		),

		'menu_font' => array(
			'value'		=> 'Roboto',
			'no_empty'	=> true
		),

		'heading_font' => array(
			'value'		=> 'Roboto',
			'no_empty'	=> true
		),

		'body_font' => array(
			'value'		=> 'Roboto',
			'no_empty'	=> true
		),

		'font_subsets' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		/**
		 * Top Bar
		 */

		'top_search' => array(
			'value'		=> true,
			'no_empty'	=> false
		),

		'top_right' => array(
			'value'		=> 'events',
			'no_empty'	=> true
		),

		'top_right_items_limit' => array(
			'value'		=> '2',
			'no_empty'	=> true
		),

		'top_right_content' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		/**
		 * Logo & Tagline
		 */

		'logo_type' => array(
			'value'		=> 'text',
			'no_empty'	=> true
		),

		'logo_image' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		'logo_hidpi' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		'logo_offset_x' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		'logo_text' => array(
			'value'		=> 'Church Name',
			'no_empty'	=> true
		),

		'logo_text_lowercase' => array(
			'value'		=> true,
			'no_empty'	=> false
		),

		'logo_text_size' => array(
			'value'		=> 'extra-large',
			'no_empty'	=> true
		),

		'tagline_under_logo' => array(
			'value'		=> false,
			'no_empty'	=> false
		),

		'tagline_offset_x' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		'header_right' => array(
			'value'		=> 'tagline',
			'no_empty'	=> true
		),

		'header_right_content' => array(
			'value'		=> '',
			'no_empty'	=> false
		),

		/**
		 * Footer Content
		 */

		'show_footer_location' => array(
			'value'		=> true,
			'no_empty'	=> false
		),

		'footer_notice' => array(
			/* translators: This is a default option value for footer copyright/notice */
			'value'		=> sprintf(
								__( '&copy; [ctcom_current_year] [ctcom_site_name]. Powered by <a href="%s" target="_blank" rel="nofollow">ChurchThemes.com</a>', 'exodus' ),
								'https://churchthemes.com'
							),
			'no_empty'	=> false
		),

		/**
		 * Social Media Icons
		 */

		'header_icon_urls' => array(
			/* translators: This is a default option value for header icons */
			'value'		=> __( "http://facebook.com\nhttp://twitter.com\n[ctcom_rss_url]\nhttp://www.apple.com/itunes/", 'exodus' ),
			'no_empty'	=> false
		),

		'footer_icon_urls' => array(
			/* translators: This is a default option value for footer icons */
			'value'		=> __( "http://facebook.com\nhttp://twitter.com\nhttp://vimeo.com\nhttp://youtube.com\nhttp://instagram.com\nhttp://pinterest.com", 'exodus' ),
			'no_empty'	=> false
		),

		/**
		 * Navigation
		 */

		'show_breadcrumbs' => array(
			'value'		=> true,
			'no_empty'	=> false
		),

		/**
		 * Homepage Slider
		 */

		'slider_slideshow' => array(
			'value'		=> true,
			'no_empty'	=> false
		),

		'slider_speed' => array(
			'value'		=> '7',
			'no_empty'	=> true
		)

	);

	return $defaults;

}

add_filter( 'ctfw_customize_defaults', 'exodus_customize_defaults' );

