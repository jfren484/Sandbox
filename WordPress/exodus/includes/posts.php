<?php
/**
 * Post Functions
 *
 * These relate to posts in general -- all types.
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2016, ChurchThemes.com
 * @link       https://github.com/churchthemes/church-theme-framework
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      2.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/*******************************************
 * EXCERPTS
 *******************************************/

/**
 * Replace excerpt's [...] with ...
 *
 * @since 2.0
 */
function exodus_excerpt_more( $more ) {

    return '&hellip;';

}

add_filter( 'excerpt_more', 'exodus_excerpt_more' );

/**
 * Dynamic excerpt length
 *
 * Show more excerpt if there is no featured image showing.
 * Pages never show featured image. Other post types do, if provided.
 *
 * Default is 55.
 *
 * @since 2.0
 * @param int $length Excerpt length.
 * @return int (Maybe) modified excerpt length.
 */
function exodus_custom_excerpt_length( $length ) {

	global $post;

	// No thumbnail or is page (doesn't show thumbnail on short view)
	if ( ! has_post_thumbnail() || get_post_type() == 'page' ) {
		$length = 62;
	}

	return $length;

}
add_filter( 'excerpt_length', 'exodus_custom_excerpt_length', 999 );