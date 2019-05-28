/**
 * Theme Customizer Controls
 *
 * Important: if binding events, use on( 'click' ), on( 'change' ), etc. vs click(), change()
 * It may just be best to poll every half-second, however, to make sure state is always correct
 */

jQuery( document ).ready( function( $ ) {

	/***************************************
	 * DETECT CHANGES
	 ***************************************/

	// Continuously check controls for changes
	// .on( 'change' ) cannot help with changes to non-form elements, such as images
	$.doTimeout( 500, function() {

		var top_right, $header_items, $custom_content, logo_type, $logo_hidpi_control, $move_logo_control, $logo_image, $logo_hidpi, $logo_offset_x, $logo_text, $logo_text_lowercase, $logo_text_size, $move_tagline, header_right, $custom_content;

		/**************************************
		 * TOP BAR
		 **************************************/

		// "Top Right" has changed
		top_right = $( "input[data-customize-setting-link^='" + exodus_customize.option_id + "[top_right]']:radio:checked" ).val();

			// Show/hide header right event/sermon/posts limit field if selected
			$header_items = $( '#customize-control-' + exodus_customize.option_id + '-top_right_items_limit' );
			if ( 'sermons' == top_right || 'events' == top_right || 'posts' == top_right ) {
				$header_items.show();
			} else {
				$header_items.hide();
			}

			// Show/hide "Custom Content" textarea if selected
			$custom_content = $( '#customize-control-' + exodus_customize.option_id + '-top_right_content' );
			if ( top_right == 'content' ) {
				$custom_content.show();
			} else {
				$custom_content.hide();
			}

		/**************************************
		 * LOGO & TAGLINE
		 **************************************/

		// Logo type
		logo_type = $( "input[data-customize-setting-link^='" + exodus_customize.option_id + "[logo_type]']:radio:checked" ).val();

		// Logo controls
		$logo_hidpi_control = $( '#customize-control-' + exodus_customize.option_id + '-logo_hidpi' );
		$move_logo_control = $( '#customize-control-' + exodus_customize.option_id + '-logo_offset_x' );

		// Show/hide "Logo Image"
		$logo_image = $( '#customize-control-' + exodus_customize.option_id + '-logo_image' );
		$logo_hidpi = $( '#customize-control-' + exodus_customize.option_id + '-logo_hidpi' );
		$logo_offset_x = $( '#customize-control-' + exodus_customize.option_id + '-logo_offset_x' );
		if ( 'image' == logo_type ) {

			$logo_image.show();

			// Show Retina Logo and Move Logo controls only while Logo uploaded ( and not using Text logo )
			if ( $( "#customize-control-" + exodus_customize.option_id + "-logo_image .thumbnail-image .attachment-thumb" ).length ) {
				$logo_hidpi_control.show();
				$move_logo_control.show();
			} else {
				$logo_hidpi_control.hide();
				$move_logo_control.hide();
			}

		} else {

			$logo_image.hide();
			$logo_hidpi_control.hide();
			$move_logo_control.hide();

		}

		// Show/hide "Logo Text", "Lowercase Text" and "Logo Text Size"
		$logo_text = $( '#customize-control-' + exodus_customize.option_id + '-logo_text' );
		$logo_text_lowercase = $( '#customize-control-' + exodus_customize.option_id + '-logo_text_lowercase' );
		$logo_text_size = $( '#customize-control-' + exodus_customize.option_id + '-logo_text_size' );
		if ( logo_type == 'text' ) {
			$logo_text.show();
			$logo_text_lowercase.show();
			$logo_text_size.show();
		} else {
			$logo_text.hide();
			$logo_text_lowercase.hide();
			$logo_text_size.hide();
		}

		// "Show tagline under logo" has changed
		// Show/hide "Move Tagline" if checked or not
		$move_tagline = $( '#customize-control-' + exodus_customize.option_id + '-tagline_offset_x' );
		if ( $( "input[data-customize-setting-link^='" + exodus_customize.option_id + "[tagline_under_logo]']" ).is( ':checked' ) ) {
			$move_tagline.show();
		} else {
			$move_tagline.hide();
		}

		// "Right of Logo" has changed
		header_right = $( "input[data-customize-setting-link^='" + exodus_customize.option_id + "[header_right]']:radio:checked" ).val();

			// Show/hide "Custom Content" textarea if selected
			$custom_content = $( '#customize-control-' + exodus_customize.option_id + '-header_right_content' );
			if ( 'content' == header_right ) {
				$custom_content.show();
			} else {
				$custom_content.hide();
			}

		/**************************************/

		// Keep checking for logo changes
		return true;

	} );

} );
