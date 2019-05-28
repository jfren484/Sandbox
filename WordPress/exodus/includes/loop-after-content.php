<?php
/**
 * "Loop After Content" Functions
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

/*********************************
 * LOOP AFTER CONTENT
 *********************************/

/**
 * Get "loop after content" query
 *
 * @since 1.0
 * @return object WP_Query object
 */
function exodus_loop_after_content_query() {

	$query = apply_filters( 'exodus_loop_after_content_query', false );

	// Post type must be supported.
	if ( isset( $query->query['post_type'] ) && ! post_type_exists( $query->query['post_type'] ) ) {
		$query = false;
	}

 	return $query;

}

/**
 * Check if "loop after content" is being used
 *
 * @since 1.0
 * @return bool Whether or not "loop after content" is used
 */
function exodus_loop_after_content_used() {

 	$used = false;

 	if ( exodus_loop_after_content_query() ) {
 		$used = true;
 	}

 	return apply_filters( 'exodus_loop_after_content_used', $used );

}

/**
 * Output the loop by loading template
 *
 * @since 1.0
 * @global object $wp_query
 */
function exodus_loop_after_content_output() {

	global $wp_query;

	// Loop posts based on query from filter
	if ( $query = exodus_loop_after_content_query() ) {

		// Preserve original query for after loop
		$original_query = $wp_query;
		$wp_query = $query;

		// Loop posts with loop.php
		echo '<section id="exodus-loop-after-content" class="exodus-loop-after-content">';
		get_template_part( 'loop' );
		echo '</section>';

		// Restore original query
		$wp_query = $original_query;
		wp_reset_postdata(); // restore $post global in main query

	}

}

/**
 * Make loop content show after content
 *
 * @since 1.0
 */
function exodus_loop_after_content() {

	// Front-end only
	if ( ! is_admin() ) {

		// Make content available via action placed after content (see content.php)
		add_action( 'exodus_after_content', 'exodus_loop_after_content_output' );

	}

}

add_action( 'init', 'exodus_loop_after_content' );
