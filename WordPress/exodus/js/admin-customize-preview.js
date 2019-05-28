/**
 * Theme Customizer Live Preview
 */

jQuery( document ).ready( function( $ ) {

	/***************************************
	 * COLORS & STYLING
	 ***************************************/

	// Main Color
	wp.customize( exodus_customize_preview.option_id + '[main_color]', function( value ) {

		value.bind( function( to ) {

			var background_selectors, border_selectors;

			background_selectors = exodus_customize_preview[ 'main_color_selectors' ];
			border_selectors = exodus_customize_preview[ 'main_color_border_selectors' ];

			// Using second method with !important so slider controls work
			//$( background_selectors ).css( 'background-color', to );
			$( 'head' ).append( '<style type="text/css">' + background_selectors + ' { background-color: ' + to + ' !important; }</style>' );
			$( 'head' ).append( '<style type="text/css">' + border_selectors + ' { border-color: ' + to + ' !important; }</style>' );

		} );

	} );

	// Link Color
	wp.customize( exodus_customize_preview.option_id + '[link_color]', function( value ) {

		value.bind( function( to ) {

			var selectors;

			selectors = exodus_customize_preview[ 'link_color_selectors' ];

			// Using second method to prevent all link elements from being color (menu items, logo, etc.)
			//$( selectors ).css( 'color', to );
			$( 'head' ).append( '<style type="text/css">' + selectors + ' { color: ' + to + '; }</style>' );

		} );

	} );

	/***************************************
	 * GOOGLE FONTS
	 ***************************************/

	// Change Fonts ( Menu, Heading, Body )
	$.each( [ 'logo_font', 'tagline_font', 'menu_font', 'heading_font', 'body_font' ], function( index, setting ) {

		wp.customize( exodus_customize_preview.option_id + '[' + setting + ']', function( value ) {

			value.bind( function( to ) {

				var selectors, font;

				font = to;

				// Change font
				selectors = exodus_customize_preview[setting + '_selectors'];
				exodus_customize_preview_font( selectors, font );

				// Change <body> class helper (tells which font used for which set of elements)
				exodus_update_body_font_class( setting, font ); // main.js

			} );

		} );

	} );

	/***************************************
	 * LOGO & TAGLINE
	 ***************************************/

	// Move Logo
	wp.customize( exodus_customize_preview.option_id + '[logo_offset_x]', function( value ) {

		value.bind( function( to ) {
			$( '#exodus-logo-image' ).css( 'left', to + 'px' );
		} );

	} );

	// Tagline
	wp.customize( 'blogdescription', function( value ) {

		value.bind( function( to ) {
			$( '.exodus-tagline' ).html( to ); // below logo and right side
		} );

	} );

	// Move Tagline ( under logo )
	wp.customize( exodus_customize_preview.option_id + '[tagline_offset_x]', function( value ) {

		value.bind( function( to ) {
			$( '#exodus-logo-tagline' ).css( 'left', to + 'px' );
		} );

	} );

	/***************************************
	 * MENU
	 ***************************************/

	// Re-activate dropdowns after Menu Customizer does "partial refresh" / "fast refresh"
	// https://make.wordpress.org/core/tag/menu-customizer/
	$( document ).on( 'customize-preview-menu-refreshed', function( e, params ) {
		if ( 'header' === params.wpNavMenuArgs.theme_location ) {
			exodus_activate_menu();
		}
	} );


} );

/***************************************
 * FUNCTIONS
 ***************************************/

/**
 * Apply Font Change
 */
function exodus_customize_preview_font( selectors, font ) {

	var family, styles, subsets, families;

	if ( selectors && font ) {

		// Prepare data
		family = font.replace( /\s/g, '+' ); // spaces to +
		styles = exodus_customize_preview.fonts[font].sizes;
		subsets = window.parent.jQuery( 'input[data-customize-setting-link="' + exodus_customize_preview.option_id + '[font_subsets]"]' ).val().replace( /\s/g, '' ); // remove spaces
		families = [family + ':' + styles + ':' + subsets];

		// Load font
		WebFont.load( {
			google: {
				families: families
			},
			active: function() {

				// Apply font
				jQuery( selectors ).css( 'font-family', "'" + font + "'" );

				// Reactivate menu ( sizing )
				exodus_activate_menu();

			}
		} );

	}

}
