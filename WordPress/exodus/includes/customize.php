<?php
/**
 * Theme Customizer
 *
 * Add options to the Theme Customizer.
 *
 * Thank you Otto: http://ottopress.com/2012/how-to-leverage-the-theme-customizer-in-your-own-themes/
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2017, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/*********************************************
 * CHOICES
 *********************************************/

/**
 * Offset Select Choices
 *
 * @since 1.0
 * @return array Choices for user selection and sanitization
 */
function exodus_customize_offset_choices() {

	$choices = array();

	$choices[0] = __( "Don't move", 'exodus' );

	for ( $i = 1; $i <= 50; $i++ ) {
		$choices[$i] = sprintf( __( '%d pixels right', 'exodus' ), $i );
		$choices['-' . $i] = sprintf( __( '%d pixels left', 'exodus' ), $i );
	}

	return apply_filters( 'exodus_customize_offset_choices', $choices );

}

/**
 * Top Right Choices
 *
 * @since 1.0
 * @return array Choices for user selection and sanitization
 */
function exodus_customize_top_right_choices() {

	$choices = array(
		'events'	=> _x( 'Upcoming Events', 'customizer', 'exodus' ),
		'sermons'	=> sprintf(
			/* translators: %1$s is "Sermons", possibly translated or changed by settings */
			_x( 'Latest %1$s', 'customizer', 'exodus' ),
			ctfw_sermon_word_plural()
		),
		'posts'		=> _x( 'Latest Posts', 'customizer', 'exodus' ),
		'tagline'	=> _x( 'Tagline', 'customizer', 'exodus' ),
		'content'	=> _x( 'Custom Content', 'customizer', 'exodus' ),
		'none'		=> _x( 'Nothing', 'customizer', 'exodus' )
	);

	return apply_filters( 'exodus_customize_top_right_choices', $choices );

}

/**
 * Top Right Items Limit Choices
 *
 * @since 1.0
 * @return array Choices for user selection and sanitization
 */
function exodus_customize_top_right_items_limit_choices() {

	$choices = array(
		'1'	=> _x( 'One', 'customizer header items', 'exodus' ),
		'2'	=> _x( 'Two', 'customizer header items', 'exodus' ),
	);

	return apply_filters( 'exodus_customize_top_right_items_limit_choices', $choices );

}

/**
 * Logo Type Choices
 *
 * @since 1.0
 * @return array Choices for user selection and sanitization
 */
function exodus_customize_logo_type_choices() {

	$choices = 	array(
		'image' => _x( 'Image', 'customizer', 'exodus' ),
		'text'	=> _x( 'Text', 'customizer', 'exodus' ),
	);

	return apply_filters( 'exodus_customize_logo_type_choices', $choices );

}

/**
 * Logo Text Size Choices
 *
 * @since 1.0
 * @return array Choices for user selection and sanitization
 */
function exodus_customize_logo_text_size_choices() {

	$choices = 	array(
		'extra-small'	=> _x( 'Extra Small', 'customizer', 'exodus' ),
		'small'			=> _x( 'Small', 'customizer', 'exodus' ),
		'medium'		=> _x( 'Medium', 'customizer', 'exodus' ),
		'large'			=> _x( 'Large', 'customizer', 'exodus' ),
		'extra-large'	=> _x( 'Extra Large', 'customizer', 'exodus' ),
	);

	return apply_filters( 'exodus_customize_logo_text_size_choices', $choices );

}

/**
 * Header Right Choices
 *
 * @since 1.0
 * @return array Choices for user selection and sanitization
 */
function exodus_customize_header_right_choices() {

	$choices = 	array(
		'tagline'	=> _x( 'Tagline', 'customizer', 'exodus' ),
		'content'	=> _x( 'Custom Content', 'customizer', 'exodus' ),
		'none'		=> _x( 'Nothing', 'customizer', 'exodus' )
	);

	return apply_filters( 'exodus_customize_header_right_choices', $choices );

}

/*********************************************
 * SETTINGS
 *********************************************/

/**
 * Sections, settings and controls
 *
 * @since 1.0
 * @param object $wp_customize WordPress theme customizer object
 */
function exodus_customize_register( $wp_customize ) {

	// Master Option
	// All options will be saved as an array under this single option ID
	$option_id = ctfw_customize_option_id();
	$setting_type = 'option';

	// Default values
	$defaults = ctfw_customize_defaults();

	// Section and control priority
	$section_priority = 0; // start it off
	$section_increment = 20;
	$control_increment = 20;

	// Remove default "Site Title & Tagline" section
	// Re-added as "Site Identity" with Favicon setting
	//$wp_customize->remove_section( 'title_tagline' );

	/************* COLORS & STYLING **************/

	$section = 'colors'; // default section
	$wp_customize->get_section( $section )->priority = $section_priority += $section_increment; // section order
	$wp_customize->get_section( $section )->title = __( 'Colors & Styling', 'exodus' ); // rename
	$control_priority = 0;

		// Color Scheme
		$setting = $option_id . '[color]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['color']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_color',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Color Scheme', 'exodus' ),
				'section'	=> $section, // core WordPress section
				'type'		=> 'radio',
				'choices'	=> ctfw_colors(), // options based on what is in the colors directory
				'priority'	=> $control_priority += $control_increment,
			) );

		// Main Color
		$setting = $option_id . '[main_color]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['main_color']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_main_color',
		) );

			$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Main Color', 'exodus' ),
				'section'	=> $section,
				'priority'	=> $control_priority += $control_increment,
			) ) );

		// Link Color
		$setting = $option_id . '[link_color]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['link_color']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_link_color',
		) );

			$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Link Color', 'exodus' ),
				'section'	=> $section,
				'priority'	=> $control_priority += $control_increment,
			) ) );

		// Rounded Corners
		$setting = $option_id . '[rounded_corners]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['rounded_corners']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Rounded Corners', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

	/*************** GOOGLE FONTS ****************/

	$section = 'exodus_fonts';
	$wp_customize->add_section( $section, array(
		'title'		=> _x( 'Google Fonts', 'customizer', 'exodus' ),
		'priority'	=> $section_priority += $section_increment, // section order
	) );
	$control_priority = 0;

		// Logo Font
		$setting = $option_id . '[logo_font]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_font']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_logo_font',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Logo Font', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> ctfw_google_font_options_array( array(
								'target' 	=> 'logo_font',
								'show_type'	=> true
							) ),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Tagline Font
		$setting = $option_id . '[tagline_font]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['tagline_font']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_tagline_font',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Tagline Font', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> ctfw_google_font_options_array( array(
								'target' 	=> 'tagline_font',
								'show_type'	=> true
							) ),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Menu Font
		$setting = $option_id . '[menu_font]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['menu_font']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_menu_font',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Menu Font', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> ctfw_google_font_options_array( array(
								'target' 	=> 'menu_font',
								'show_type'	=> true
							) ),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Heading Font
		$setting = $option_id . '[heading_font]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['heading_font']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_heading_font',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Heading Font', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> ctfw_google_font_options_array( array(
								'target' 	=> 'heading_font',
								'show_type'	=> true
							) ),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Body Font
		$setting = $option_id . '[body_font]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['body_font']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_body_font',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Body Font', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> ctfw_google_font_options_array( array(
								'target' 	=> 'body_font',
								'show_type'	=> true
							) ),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Character Sets
		$setting = $option_id . '[font_subsets]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['font_subsets']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_font_subsets',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Character Sets', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'text',
				'priority'	=> $control_priority += $control_increment,
			) );

	/****************** TOP BAR ******************/

	$section = 'exodus_top';
	$wp_customize->add_section( $section, array(
		'title'		=> _x( 'Top Bar', 'customizer', 'exodus' ),
		'priority'	=> $section_priority += $section_increment, // section order
	) );
	$control_priority = 0;

		// Search Icon
		$setting = $option_id . '[top_search]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['top_search']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Search Icon', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

		// Top Right
		$setting = $option_id . '[top_right]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['top_right']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_top_right',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> _x( 'Top Right', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'radio',
				'choices'	=> exodus_customize_top_right_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Top Right - Items Limit
		$setting = $option_id . '[top_right_items_limit]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['top_right_items_limit']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_top_right_items_limit',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> _x( 'Items on Right', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'radio',
				'choices'	=> exodus_customize_top_right_items_limit_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Top Bar - Custom Content
		$setting = $option_id . '[top_right_content]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['top_right_content']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_top_right_content',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Custom Content', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'text',
				'priority'	=> $control_priority += $control_increment,
			) );

	/*************** HEADER & LOGO ***************/

	$section = 'exodus_header';
	$wp_customize->add_section( $section, array(
		'title'		=> _x( 'Header & Logo', 'customizer', 'exodus' ),
		'priority'	=> $section_priority += $section_increment, // section order
	) );
	$control_priority = 0;

		// Logo Type
		$setting = $option_id . '[logo_type]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_type']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_logo_type',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> _x( 'Logo Type', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'radio',
				'choices'	=> exodus_customize_logo_type_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Logo Image
		$setting = $option_id . '[logo_image]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_image']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'esc_url_raw',
		) );

			$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, $setting, array(
				'label'		=> _x( 'Logo Image', 'customizer', 'exodus' ),
				'section'	=> $section,
				'priority'	=> $control_priority += $control_increment,
			) ) );

		// Logo Image - HiDPI / Retina
		$setting = $option_id . '[logo_hidpi]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_hidpi']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'esc_url_raw',
		) );

			$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, $setting, array(
				'label'		=> _x( 'HiDPI Logo (Optional)', 'customizer', 'exodus' ),
				'section'	=> $section,
				'priority'	=> $control_priority += $control_increment,
			) ) );

		// Move Logo Image
		// Handy for when logo has shadow sticking out to the left
		// (No spacing option for between logo and tagline since that can be done with logo whitespace)
		$setting = $option_id . '[logo_offset_x]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_offset_x']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_logo_offset_x',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Move Logo', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> exodus_customize_offset_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Logo Text
		$setting = $option_id . '[logo_text]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_text']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_logo_text',
		) );

			$wp_customize->add_control( new CTFW_Customize_Textarea_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Logo Text', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'textarea',
				'priority'	=> $control_priority += $control_increment
			) ) );

		// Lowercase logo text
		$setting = $option_id . '[logo_text_lowercase]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_text_lowercase']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Show in lowercase', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

		// Logo Text Size
		$setting = $option_id . '[logo_text_size]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['logo_text_size']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_logo_text_size',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> _x( 'Logo Text Size', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'radio',
				'choices'	=> exodus_customize_logo_text_size_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Tagline
		// Move it from default "Site Title & Tagline" section which is removed above
		$setting = 'blogdescription'; // don't need to do add_setting because didn't remove it above
		$wp_customize->get_control( $setting )->section = $section;
		$wp_customize->get_setting( $setting )->transport = 'postMessage'; // enable JS updating
		$wp_customize->get_control( $setting )->priority = $control_priority += $control_increment;

		// Show tagline under logo
		$setting = $option_id . '[tagline_under_logo]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['tagline_under_logo']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Show tagline under logo', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

		// Move Tagline
		// Handy for making tagline line up with text below logo image
		$setting = $option_id . '[tagline_offset_x]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['tagline_offset_x']['value'],
			'type'					=> $setting_type,
			'transport'				=> 'postMessage',
			'sanitize_callback'		=> 'exodus_customize_sanitize_tagline_offset_x',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Move Tagline', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'select',
				'choices'	=> exodus_customize_offset_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Right of Logo
		$setting = $option_id . '[header_right]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['header_right']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_header_right',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> _x( 'Right of Logo', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'radio',
				'choices'	=> exodus_customize_header_right_choices(),
				'priority'	=> $control_priority += $control_increment,
			) );

		// Right of Logo - Custom Content
		$setting = $option_id . '[header_right_content]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['header_right_content']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_header_right_content',
		) );

			$wp_customize->add_control( new CTFW_Customize_Textarea_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Custom Content', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'textarea',
				'priority'	=> $control_priority += $control_increment,
			) ) );

		// Breadcrumb Path
		$setting = $option_id . '[show_breadcrumbs]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['show_breadcrumbs']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Show breadcrumb path on subpages', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

	/************** FOOTER CONTENT ***************/

	$section = 'exodus_footer';
	$wp_customize->add_section( $section, array(
		'title'		=> _x( 'Footer Content', 'customizer', 'exodus' ),
		'priority'	=> $section_priority += $section_increment, // section order
	) );
	$control_priority = 0;

		// Location
		$setting = $option_id . '[show_footer_location]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['show_footer_location']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> _x( 'Show Location', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

		// Notice
		$setting = $option_id . '[footer_notice]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['footer_notice']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_footer_notice',
		) );

			$wp_customize->add_control( new CTFW_Customize_Textarea_Control( $wp_customize, $setting, array(
				'label'		=> _x( 'Notice', 'customizer', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'textarea',
				'priority'	=> $control_priority += $control_increment,
			) ) );

	/************ SOCIAL MEDIA ICONS *************/

	// Social Media Icons
	$section = 'exodus_icons';
	$wp_customize->add_section( $section, array(
		'title'		=> _x( 'Social Media Icons', 'customizer', 'exodus' ),
		'priority'	=> $section_priority += $section_increment, // section order
	) );
	$control_priority = 0;

		// Header URLs
		$setting = $option_id . '[header_icon_urls]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['header_icon_urls']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_social_icons',
		) );

			$wp_customize->add_control( new CTFW_Customize_Textarea_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Header URLs', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'textarea',
				'priority'	=> $control_priority += $control_increment,
			) ) );

			add_action( 'ctfw_customize_textarea_control_before-' . $setting, 'exodus_customize_icons_description' );

			function exodus_customize_icons_description() {

				?>
				<p id="exodus-customize-icons-description" class="description">
					<?php printf( __( 'Enter one URL per line for %s. Use <code>[ctcom_rss_url]</code> for RSS.', 'exodus' ), exodus_social_icon_sites( 'or' ) ); ?>
				<p>
				<?php

			}

		// Footer URLs
		$setting = $option_id . '[footer_icon_urls]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['footer_icon_urls']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_social_icons',
		) );

			$wp_customize->add_control( new CTFW_Customize_Textarea_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Footer URLs', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'textarea',
				'priority'	=> $control_priority += $control_increment,
			) ) );

	/************* STATIC FRONT PAGE *************/

	// Static Front Page (core)
	$section = 'static_front_page'; // default section	$section = 'static_front_page';
	if ( $wp_customize->get_section( $section ) ) { // section will not exist if no Pages have been made yet
		$wp_customize->get_section( $section )->priority = $section_priority += $section_increment; // section order
		$control_priority = 0;
	}

	/************** HOMEPAGE SLIDER **************/

	$section = 'exodus_slider';
	$wp_customize->add_section( $section, array(
		'title'		=> _x( 'Homepage Slider', 'customizer', 'exodus' ),
		'priority'	=> $section_priority += $section_increment, // section order
	) );
	$control_priority = 0;

		// Automatic
		$setting = $option_id . '[slider_slideshow]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['slider_slideshow']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'ctfw_customize_sanitize_checkbox',
		) );

			$wp_customize->add_control( $setting, array(
				'label'		=> __( 'Automatically transition to next slide', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'checkbox',
				'priority'	=> $control_priority += $control_increment,
			) );

		// Speed
		$setting = $option_id . '[slider_speed]';
		$wp_customize->add_setting( $setting, array(
			'default'				=> $defaults['slider_speed']['value'],
			'type'					=> $setting_type,
			'sanitize_callback'		=> 'exodus_customize_sanitize_slider_speed',
		) );

			$wp_customize->add_control( new CTFW_Customize_Number_Control( $wp_customize, $setting, array(
				'label'		=> __( 'Seconds Between Transitions', 'exodus' ),
				'section'	=> $section,
				'type'		=> 'number',
				'priority'	=> $control_priority += $control_increment,
			) ) );

	/****************** WIDGETS ******************/

	// Widgets (core) - move before "Additional CSS"
	if ( method_exists( $wp_customize, 'get_panel' ) ) { // prevent nonexistent metod error in pre-WordPress 4.0
		$panel = (object) $wp_customize->get_panel( 'widgets' ); // prevent "Creating default object from empty value" warning in PHP 5.4
		$panel->priority = 199; // panel/section order
	}

}

add_action( 'customize_register', 'exodus_customize_register' );

/*********************************************
 * SANITIZATION
 *********************************************/

// Sanitize all fields to prevent incorrect or dangerous input.

/************* COLORS & STYLING **************/

/**
 * Sanitize Color Scheme
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_color( $input, $object ) {

	// Check input against options; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'color', $input, ctfw_colors() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_color', $output, $input, $object );

}

/**
 * Sanitize Main Color
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_main_color( $input, $object ) {

	// Validate hex code; if empty or invalid, use default
	$output = ctfw_customize_sanitize_color( 'main_color', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_main_color', $output, $input, $object );

}

/**
 * Sanitize Link Color
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_link_color( $input, $object ) {

	// Sanitize hex code ; if empty or invalid, use default
	$output = ctfw_customize_sanitize_color( 'link_color', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_link_color', $output, $input, $object );

}

/**
 * Rounded Corners checkbox done directly with ctfw_customize_sanitize_checkbox()
 */

/*************** GOOGLE FONTS ****************/

/**
 * Sanitize Logo Font
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_logo_font( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_google_font( 'logo_font', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_logo_font', $output, $input, $object );

}

/**
 * Sanitize Tagline Font
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_tagline_font( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_google_font( 'tagline_font', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_tagline_font', $output, $input, $object );

}

/**
 * Sanitize Menu Font
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_menu_font( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_google_font( 'menu_font', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_menu_font', $output, $input, $object );

}

/**
 * Sanitize Heading Font
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_heading_font( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_google_font( 'heading_font', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_heading_font', $output, $input, $object );

}

/**
 * Sanitize Body Font
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_body_font( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_google_font( 'body_font', $input );

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_body_font', $output, $input, $object );

}

/**
 * Sanitize Google Font Character Sets
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_font_subsets( $input, $object ) {

	// Remove whitespace, HTML, etc.
	$output = sanitize_text_field( $input );

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_font_subsets', $output, $input, $object );

}

/****************** TOP BAR ******************/

/**
 * Search Icon checkbox done directly with ctfw_customize_sanitize_checkbox()
 */

/**
 * Sanitize Top Right
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_top_right( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'top_right', $input, exodus_customize_top_right_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_top_right', $output, $input, $object );

}

/**
 * Sanitize Top Right Items Limit
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_top_right_items_limit( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'top_right_items_limit', $input, exodus_customize_top_right_items_limit_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_top_right_items_limit', $output, $input, $object );

}

/**
 * Sanitize Top Right Custom Content
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Content with "safe" HTML
 */
function exodus_customize_sanitize_top_right_content( $input, $object ) {

	// Allow HTML (same as posts), no scripts (better to child theme it)
	$output = stripslashes( wp_filter_post_kses( addslashes( $input ) ) );

	// Balance tags (may be using HTML for link)
	$output = force_balance_tags( $output );

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_top_right_content', $output, $input, $object );

}

/************** LOGO & TAGLINE ***************/

/**
 * Sanitize Logo Type
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_logo_type( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'logo_type', $input, exodus_customize_logo_type_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_logo_type', $output, $input, $object );

}

/**
 * Logo Image and HiDPI Logo -- done directly with esc_url_raw()
 */

/**
 * Sanitize Move Logo
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_logo_offset_x( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'logo_offset_x', $input, exodus_customize_offset_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_logo_offset_x', $output, $input, $object );

}

/**
 * Sanitize Logo Text
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_logo_text( $input, $object ) {

	// Remove whitespace, HTML, etc.
	$output = sanitize_text_field( $input );

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_logo_text', $output, $input, $object );

}

/**
 * Show in lowercase -- done directly with ctfw_customize_sanitize_checkbox()
 */

/**
 * Sanitize Logo Text Size
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_logo_text_size( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'logo_text_size', $input, exodus_customize_logo_text_size_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_logo_text_size', $output, $input, $object );

}

/**
 * Show tagline under logo -- done directly with ctfw_customize_sanitize_checkbox()
 */

/**
 * Sanitize Header Right
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_header_right( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'header_right', $input, exodus_customize_header_right_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_header_right', $output, $input, $object );

}

/**
 * Sanitize Move Tagline
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized value
 */
function exodus_customize_sanitize_tagline_offset_x( $input, $object ) {

	// Check input against choices; use default if empty value not permitted
	$output = ctfw_customize_sanitize_single_choice( 'tagline_offset_x', $input, exodus_customize_offset_choices() ); // ctfw_customize_sanitize_single_choice is for radio or single select

	// Return sanitized, filterable
	return apply_filters( 'exodus_customize_sanitize_tagline_offset_x', $output, $input, $object );

}

/**
 * Sanitize Right of Logo Custom Content
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Content with "safe" HTML
 */
function exodus_customize_sanitize_header_right_content( $input, $object ) {

	// Allow HTML (same as posts), no scripts (better to child theme it)
	$output = stripslashes( wp_filter_post_kses( addslashes( $input ) ) );

	// Balance tags (may be using HTML for link)
	$output = force_balance_tags( $output );

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_header_right_content', $output, $input, $object );

}

/************** FOOTER CONTENT ***************/

/**
 * Show Location -- done directly with ctfw_customize_sanitize_checkbox()
 */

/**
 * Sanitize Footer Notice
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Content with "safe" HTML
 */
function exodus_customize_sanitize_footer_notice( $input, $object ) {

	// Allow HTML (same as posts), no scripts
	$output = stripslashes( wp_filter_post_kses( addslashes( $input ) ) );

	// Balance tags (may be using HTML for link)
	$output = force_balance_tags( $output );

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_footer_notice', $output, $input, $object );

}

/************ SOCIAL MEDIA ICONS *************/

/**
 * Sanitize Social Icons
 *
 * Used on header and footer URL lists for icons.
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return string Sanitized list of URLs
 */
function exodus_customize_sanitize_social_icons( $input, $object ) {

	// Remove empty lines and sanitize URLs
	$output = ctfw_sanitize_url_list( $input, array(
		'[ctcom_rss_url]' // allow this string instead of URL
	) );

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_social_icons', $output, $input, $object );

}

/**************** NAVIGATION *****************/

/**
 * Show breadcrumb... -- done directly with ctfw_customize_sanitize_checkbox()
 */

/************** HOMEPAGE SLIDER **************/

/**
 * Automatically transition... -- done directly with ctfw_customize_sanitize_checkbox()
 */

/**
 * Sanitize Slider Speed
 *
 * @since 1.0
 * @param string $input Unsanitized value submitted by user
 * @param object $object
 * @return int Non-negative number greater than 1
 */
function exodus_customize_sanitize_slider_speed( $input, $object ) {

	// Force non-negative numeric value
	$output = absint( $input );

	// If 0 set it to 1
	if ( 0 == $output ) {
		$output = 1;
	}

	// Return sanitized filterable
	return apply_filters( 'exodus_customize_sanitize_slider_speed', $output, $input, $object );

}

/*********************************************
 * SCRIPTS & STYLES
 *********************************************/

/**
 * Enqueue JavaScript for customizer controls
 *
 * @since 1.0
 */
function exodus_customize_enqueue_scripts() {

	// doTimeout used by admin-customize.js
	wp_enqueue_script( 'jquery-ba-dotimeout', get_theme_file_uri( CTFW_THEME_JS_DIR . '/jquery.ba-dotimeout.min.js' ), array( 'jquery' ), CTFW_THEME_VERSION ); // bust cache on theme update

	// Script that handles dynamic display of controls
	wp_enqueue_script( 'exodus-admin-customize', get_theme_file_uri( CTFW_THEME_JS_DIR . '/admin-customize.js' ), array( 'jquery' ), CTFW_THEME_VERSION ); // bust cache on theme update

	// Make data available to script
	wp_localize_script( 'exodus-admin-customize', 'exodus_customize', array(
		'option_id' => ctfw_customize_option_id()
	));

}

add_action( 'customize_controls_print_scripts', 'exodus_customize_enqueue_scripts' );

/**
 * Enqueue styles for customizer controls
 *
 * @since 1.0
 */
function exodus_customize_enqueue_styles() {

	// Main styles for Customizer
	wp_enqueue_style( 'exodus-admin-customize', get_theme_file_uri( CTFW_THEME_CSS_DIR . '/admin-customize.css' ), false, CTFW_THEME_VERSION ); // bust cache on update

}

add_action( 'customize_controls_print_styles', 'exodus_customize_enqueue_styles' );

/**
 * Enqueue JavaScript for customizer live preview
 *
 * @since 1.0
 */
function exodus_customize_preview_enqueue_scripts() {

	// Google Web Font Loader
	wp_enqueue_script( 'google-webfont-loader', '//ajax.googleapis.com/ajax/libs/webfont/1/webfont.js', false, null ); // null - don't mess with Google Fonts URL by adding version

	// Enqueue preview script
	wp_enqueue_script( 'exodus-admin-customize-preview', get_theme_file_uri( CTFW_THEME_JS_DIR . '/admin-customize-preview.js' ), false, CTFW_THEME_VERSION ); // bust cache on theme update

	// Make data available to script
	wp_localize_script( 'exodus-admin-customize-preview', 'exodus_customize_preview', array(
		'option_id' 					=> ctfw_customize_option_id(),
		'fonts' 						=> ctfw_google_fonts(),
		'logo_font_selectors'			=> exodus_style_selectors( 'logo_font' ),
		'tagline_font_selectors'		=> exodus_style_selectors( 'tagline_font' ),
		'menu_font_selectors'			=> exodus_style_selectors( 'menu_font' ),
		'heading_font_selectors'		=> exodus_style_selectors( 'heading_font' ),
		'body_font_selectors'			=> exodus_style_selectors( 'body_font' ),
		'main_color_selectors'			=> exodus_style_selectors( 'main_color' ),
		'main_color_border_selectors'	=> exodus_style_selectors( 'main_color_border' ),
		'link_color_selectors'			=> exodus_style_selectors( 'link_color' )
	));

}

add_action( 'customize_preview_init', 'exodus_customize_preview_enqueue_scripts' );

