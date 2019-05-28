<?php
/**
 * Church Content Feature Support
 *
 * The plugin provides church-related post types and taxonomies.
 *
 * Child Themes: Use get_theme_support() to get arguments, modify them, then call
 * add_theme_support(): http://codex.wordpress.org/Function_Reference/get_theme_support
 *
 * See developer guide: https://churchthemes.com/guides/developer/church-content/
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2018, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/**
 * Add theme support for Church Content plugin
 *
 * @since 1.0
 */
function exodus_add_theme_support_ctc() {

	/**
	 * Plugin Support
	 *
	 * Tell plugin theme supports it. This leaves all features disabled so they can
	 * be enabled explicitly below. When support not added, all features are revealed
	 * so user can access content (in case switched to an unsupported theme).
	 *
	 * This also removes the plugin's "not using compatible theme" message.
	 */

	add_theme_support( 'church-theme-content' );

	/**
	 * Plugin Features
	 *
	 * When array of arguments not given, plugin defaults are used (enabling all taxonomies
	 * and fields for feature). It is recommended to explicitly specify taxonomies and
	 * fields used by theme so plugin updates don't reveal unsupported features.
	 */

	// Sermons
	add_theme_support( 'ctc-sermons', array(
		'taxonomies' => array(
			'ctc_sermon_topic',
			'ctc_sermon_book',
			'ctc_sermon_series',
			'ctc_sermon_speaker',
			'ctc_sermon_tag',
		),
		'fields' => array(
			'_ctc_sermon_has_full_text',
			'_ctc_sermon_video',
			'_ctc_sermon_audio',
			'_ctc_sermon_pdf',
		),
		'field_overrides' => array()
	) );

	// Events
	add_theme_support( 'ctc-events', array(
		'taxonomies' => array(
			'ctc_event_category',
		),
		'fields' => array(
			'_ctc_event_start_date',
			'_ctc_event_end_date',
			'_ctc_event_start_time',
			'_ctc_event_end_time',
			'_ctc_event_hide_time_range',
			'_ctc_event_time',
			'_ctc_event_venue',
			'_ctc_event_address',
			'_ctc_event_show_directions_link',
			'_ctc_event_map_lat',
			'_ctc_event_map_lng',
			'_ctc_event_map_type',
			'_ctc_event_map_zoom',
			'_ctc_event_registration_url',
			// see support-framework.php for grandfathering of basic recurrence fields.
		),
		'field_overrides' => array(
			'_ctc_event_map_type' => array(
				'default' => 'ROADMAP',
			),
			'_ctc_event_map_zoom' => array(
				'default' => '14',
			),
		)
	) );

	// People
	add_theme_support( 'ctc-people', array(
		'taxonomies' => array(
			'ctc_person_group',
		),
		'fields' => array(
			'_ctc_person_position',
			'_ctc_person_phone',
			'_ctc_person_email',
			'_ctc_person_urls',
		),
		'field_overrides' => array(
			'_ctc_person_urls' => array(
				'desc' => sprintf( __( 'Enter one URL per line for %s.', 'exodus' ), exodus_social_icon_sites( 'or' ) ),
			),
			'_ctc_person_email' => array(
				'desc' => __( 'Email address will be encoded to help prevent spam.', 'exodus' ),
			),
		),
	) );

	// Locations
	add_theme_support( 'ctc-locations', array(
		'taxonomies' => array(),
		'fields' => array(
			'_ctc_location_address',
			'_ctc_location_show_directions_link',
			'_ctc_location_map_lat',
			'_ctc_location_map_lng',
			'_ctc_location_map_type',
			'_ctc_location_map_zoom',
			'_ctc_location_phone',
			'_ctc_location_email',
			'_ctc_location_times',
		),
		'field_overrides' => array(
			'_ctc_location_email' => array(
				'desc' => __( 'Email address will be encoded to help prevent spam.', 'exodus' ),
			),
			'_ctc_location_map_type' => array(
				'default' => 'ROADMAP',
			),
			'_ctc_location_map_zoom' => array(
				'default' => '14',
			),
		)
	) );

}

add_action( 'after_setup_theme', 'exodus_add_theme_support_ctc' );
