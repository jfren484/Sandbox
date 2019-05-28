<?php
/**
 * Template Name: Blog
 *
 * This shows a page with custom loop after the content.
 *
 * content.php outputs the page content.
 * content.php outputs content for each post in the loop.
 */

// Query events that ended before today
function exodus_blog_loop_after_content() {

	return new WP_Query( array(
		'post_type'	=> 'post',
		'paged'		=> ctfw_page_num() // returns/corrects $paged so pagination works on static front page
	) );

}

// Make query available via filter
add_filter( 'exodus_loop_after_content_query', 'exodus_blog_loop_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );
