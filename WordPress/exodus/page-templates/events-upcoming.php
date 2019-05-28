<?php
/**
 * Template Name: Events - Upcoming
 *
 * This shows a page with custom loop after the content.
 *
 * content.php outputs the page content.
 * content-event.php outputs content for each post in the loop.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Query events that have end date today or future
function exodus_events_upcoming_loop_after_content() {

	// Query arguments
	$args = array(
		'post_type'			=> 'ctc_event',
		'paged'				=> ctfw_page_num(), // returns/corrects $paged so pagination works on static front page
		'meta_query' => array(
			array( // only get upcoming events (ending today or in future)
				'key' => '_ctc_event_end_date', // the latest date that the event goes to (could be same as start date)
				'value' => date_i18n( 'Y-m-d' ), // today's date, localized
				'compare' => '>=', // all events with start OR end date today or later
				'type' => 'DATE'
			),
		),
		'meta_key' 			=> '_ctc_event_start_date_start_time', // want earliest start date/time first
		'meta_type' 		=> 'DATETIME', // 0000-00-00 00:00:00
		'orderby'			=> 'meta_value',
		'order'				=> 'ASC' // sort from soonest to latest
	);

	// Backwards compatibility
	// Church Content added rigid time fields in version 1.2
	// Continue ordering by old field for old versions of plugin
	if ( defined( 'CTC_VERSION' ) && version_compare( CTC_VERSION, '1.2', '<' ) ) { // CTC plugin is active and old
		$args['meta_type'] = 'DATE'; // 0000-00-00
		$args['meta_key'] = '_ctc_event_start_date'; // order by this; want earliest starting date/time first
	}

	// Return modified query
	return new WP_Query( $args );

}

// Make query available via filter
add_filter( 'exodus_loop_after_content_query', 'exodus_events_upcoming_loop_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );
