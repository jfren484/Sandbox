<?php
/**
 * Font Functions
 *
 * Also see the helper functions in framework's fonts.php.
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
 * GOOGLE FONTS
 *******************************************/

/**
 * Specify Google Fonts available
 *
 * A selection of Google Fonts to choose in Customizer
 * http://www.google.com/webfonts
 *
 * Filter ctfw_google_fonts to make available for framework.
 * Use ctfw_google_fonts( $target ) to get fonts.
 *
 * sizes 	copied from Google URL (can be blank if single size)
 * type 	serif, sans-serif, handwriting or display (for fallback)
 * targets	where this font is available for use (blank for all)
 *
 * Example source: http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic
 *
 * Body fonts should have regular, bold and italic. All fonts should have even line height.
 *
 * @since 1.0
 */
function exodus_google_fonts() {

	return array(

		/**
		 * Sans Serif Fonts
		 */

		'Asap' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Cabin' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Cabin Condensed' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Comfortaa' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Days One' => array(
			'sizes'		=> '',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							//'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Dosis' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Droid Sans' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							//'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Lato' => array(
			'sizes'		=> '400,700,900,400italic,700italic,900italic',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Magra' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Montserrat' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Open Sans' => array(
			//'sizes'	=> '300,300italic,400,400italic,700,700italic',
			'sizes'		=> '300italic,400italic,600italic,700italic,300,600,400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Oswald' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Quicksand' => array(
			'sizes'		=> '400,700',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Roboto' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Ubuntu' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							//'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Ubuntu Condensed' => array(
			'sizes'		=> '',
			'type'		=> 'sans-serif',
			'targets'	=> array(
							//'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		/**
		 * Serif Fonts
		 */

		'Caudex' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Droid Serif' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'serif',
			'targets'	=> array(
							//'logo_font',
										'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Kreon' => array(
			'sizes'		=> '400,700',
			'type'		=> 'serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Noto Serif' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		'Tinos' => array(
			'sizes'		=> '400,700,400italic,700italic',
			'type'		=> 'serif',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							'body_font'
						)
		),

		// Display Fonts

		'Cabin Sketch' => array(
			'sizes'		=> '400,700',
			'type'		=> 'display',
			'targets'	=> array(
							'logo_font',
							//'tagline_font',
							//'menu_font',
							//'heading_font',
							//'body_font'
						)
		),

		'Concert One' => array(
			'sizes'		=> '',
			'type'		=> 'display',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Fredericka the Great' => array(
			'sizes'		=> '',
			'type'		=> 'display',
			'targets'	=> array(
							'logo_font',
							//'tagline_font',
							//'menu_font',
							//'heading_font',
							//'body_font'
						)
		),

		'Patua One' => array(
			'sizes'		=> '',
			'type'		=> 'display',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		/**
		 * Handwriting Fonts
		 */

		'Nothing You Could Do' => array(
			'sizes'		=> '',
			'type'		=> 'handwriting',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							//'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Patrick Hand' => array(
			'sizes'		=> '',
			'type'		=> 'handwriting',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

		'Shadows Into Light Two' => array(
			'sizes'		=> '',
			'type'		=> 'handwriting',
			'targets'	=> array(
							'logo_font',
							'tagline_font',
							'menu_font',
							'heading_font',
							//'body_font'
						)
		),

	);

}

add_filter( 'ctfw_google_fonts', 'exodus_google_fonts' );
