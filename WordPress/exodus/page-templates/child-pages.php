<?php
/**
 * Template Name: Child Pages
 *
 * This shows a page listing child pages (pages having the page as parent).
 *
 * content.php outputs the page content.
 * content.php also outputs content for each post in the loop.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Query events that ended before today
function exodus_child_pages_loop_after_content() {

	global $post;

	return new WP_Query( array(
		'post_type'			=> 'page',
		'post_parent'		=> $post->ID,
		'paged'				=> ctfw_page_num(), // returns/corrects $paged so pagination works on static front page
		'orderby'			=> 'menu_order',
		'order'				=> 'ASC'
	) );

}

// Make query available via filter
add_filter( 'exodus_loop_after_content_query', 'exodus_child_pages_loop_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );