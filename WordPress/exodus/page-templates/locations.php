<?php
/**
 * Template Name: Locations
 *
 * This shows a page with custom loop after the content.
 *
 * content.php outputs the page content.
 * content-location.php outputs content for each post in the loop.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Query events that ended before today
function exodus_locations_loop_after_content() {

	return new WP_Query( array(
		'post_type'			=> 'ctc_location',
		'paged'				=> ctfw_page_num(), // returns/corrects $paged so pagination works on static front page
		'orderby'			=> 'menu_order',
		'order'				=> 'ASC'
	) );

}

// Make query available via filter
add_filter( 'exodus_loop_after_content_query', 'exodus_locations_loop_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );