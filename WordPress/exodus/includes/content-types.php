<?php
/**
 * Content Type Functions
 *
 * ctfw_current_content_type() in framework returns sermon, event, people, location, blog, page or search
 * depending on current post type, taxonomy, page template and other conditions.
 * This is useful for determining which sidebar to show or displaying a banner, for example.
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2016, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/*********************************
 * CONTENT TYPES
 *********************************

/**
 * Update content types
 *
 * Page templates are theme-specific, so they should be filtered in here.
 * List page templates in order of priority for exodus_sidebar_enabled() and ctfw_redirect_archives_to_pages().
 *
 * Any of the other data can be changed. New content types can also be added.
 *
 * @since 1.0
 * @param array $content_types Default content types configuration from framework
 * @return array Modified content types
 */
function exodus_update_content_types( $content_types ) {

	// Add page templates to existing content types
	$content_types['sermon']['page_templates']		= array( 'sermons.php', 'sermon-topics.php', 'sermon-books.php', 'sermon-series.php', 'sermon-speakers.php', 'sermon-dates.php' );
	$content_types['event']['page_templates']		= array( 'events-upcoming.php', 'events-calendar.php', 'events-past.php' );
	$content_types['people']['page_templates']		= array( 'people.php' );
	$content_types['location']['page_templates'] 	= array( 'locations.php' );
	$content_types['gallery']['page_templates'] 	= array( 'gallery.php', 'galleries.php' );
	$content_types['contact']['page_templates'] 	= array( 'contact.php' );
	$content_types['blog']['page_templates'] 		= array( 'blog.php' );

	return $content_types;

}

add_filter( 'ctfw_content_types', 'exodus_update_content_types' );
