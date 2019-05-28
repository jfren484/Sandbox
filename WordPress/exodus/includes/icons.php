<?php
/**
 * Icon Functions
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

/***********************************
 * ICON FONT
 ***********************************

/**
 * Get icon class
 *
 * Return icon class for specific element, for easy filtering to replace icons in specific areas.
 *
 * For social icons to filter, see exodus_social_icon_map() below.
 *
 * @since 1.0
 * @param string $element Element icon used with
 * @return string Icon class
 */
function exodus_get_icon_class( $element ) {

	// Elements and their classes
	$classes = array(
		'search-button'			=> 'el-icon-search', 			// top bar and widget
		'footer-phone'			=> 'el-icon-phone-alt',
		'footer-address'		=> 'el-icon-map-marker',
		'nav-left'				=> 'el-icon-chevron-left', 		// prev/next navigation
		'nav-right'				=> 'el-icon-chevron-right', 	// prev/next navigation
		'comments-link'			=> 'el-icon-comment', 			// "(icon) 5 Comments"
		'comment-reply'			=> 'el-icon-comment-alt', 		// "Reply" button on comment
		'comment-edit'			=> 'el-icon-edit', 				// "Edit" button on comment
		'edit-post'				=> 'el-icon-edit',				// edit button for any post type
		'gallery'				=> 'el-icon-camera',
		'quote'					=> 'el-icon-quotes-alt',
		'quote-link'			=> 'el-icon-share-alt',
		'chat'					=> 'el-icon-comment-alt',
		'link'					=> 'el-icon-share-alt',
		'image'					=> 'el-icon-photo',
		'entry-date'			=> 'el-icon-calendar',
		'entry-byline'			=> 'el-icon-torso',
		'entry-parent'			=> 'el-icon-paper-clip',
		'entry-category'		=> 'el-icon-folder',
		'entry-tag'				=> 'el-icon-tags',
		'download'				=> 'el-icon-download-alt', 		// generic download
		'read'					=> 'el-icon-align-justify',		// sermon
		'video-play'			=> 'el-icon-video',				// sermon
		'audio-play'			=> 'el-icon-headphones', 		// sermon
		'video-download'		=> 'el-icon-download-alt', 		// sermon
		'audio-download'		=> 'el-icon-download-alt', 		// sermon
		'pdf-download'			=> 'el-icon-download-alt', 		// sermon
		'sermon-topic'			=> 'el-icon-folder',
		'sermon-book'			=> 'el-icon-book',
		'sermon-series'			=> 'el-icon-forward-alt',
		'sermon-speaker'		=> 'el-icon-torso',
		'sermon-date'			=> 'el-icon-calendar',
		'event-date'			=> 'el-icon-calendar',
		'event-recurrence'		=> 'el-icon-refresh',
		'event-excluded'		=> 'el-icon-remove-sign',
		'event-address'			=> 'el-icon-map-marker',
		'event-time'			=> 'el-icon-time-alt',
		'event-directions'		=> 'el-icon-road',
		'event-category'		=> 'el-icon-folder',
		'event-venue'			=> 'el-icon-flag',
		'event-register'		=> 'el-icon-ok',
		'location-phone'		=> 'el-icon-phone-alt',
		'location-email'		=> 'el-icon-envelope',
		'location-address'		=> 'el-icon-map-marker',
		'location-times'		=> 'el-icon-time-alt',
		'location-directions'	=> 'el-icon-road',
		'person-position'		=> 'el-icon-adult',
		'person-phone'			=> 'el-icon-phone-alt',
		'person-email'			=> 'el-icon-envelope',
	);

	// Make array filterable
	$classes = apply_filters( 'exodus_icon_classes', $classes, $element );

	// Get class for element
	$class = '';
	if ( ! empty( $classes[$element] ) ) {
		$class = $classes[$element];
	}

	// Return filterable
	return apply_filters( 'exodus_get_icon_class', $class, $element );

}

/**
 * Output icon class
 *
 * Output contents of exodus_get_icon_class()
 *
 * @since 1.0
 * @param string $element Element icon used with
 * @param bool $return Whether or not to return (false echos)
 * @return string If echoing class
 */
function exodus_icon_class( $element, $return = false ) {

	$class = apply_filters( 'exodus_icon_class', exodus_get_icon_class( $element ) );

	if ( $return ) {
		return $class;
	} else {
		echo $class;
	}

}

/***********************************
 * SOCIAL ICONS (Header/Footer)
 ***********************************

/**
 * Icons available
 *
 * This is used in displaying icons with exodus_social_icons() and
 * to tell which social networks are supported with exodus_social_icon_sites().
 *
 * @since 1.0
 * @return array Icon map
 */
function exodus_social_icon_map() {

	 // Social media sites with icons
	$icon_map = array(

		// CSS Class 						// Match in URL 	// Site Name 		// Hide in list
		'el-icon-facebook'		=> array(	'facebook',			'Facebook' ),
		'el-icon-twitter'		=> array(	'twitter',			'Twitter' ),
		'el-icon-googleplus'	=> array(	'plus.google',		'Google+' ),
		'el-icon-pinterest'		=> array( 	'pinterest',		'Pinterest' ),
		'el-icon-youtube'		=> array( 	'youtube',			'YouTube' ),
		'el-icon-vimeo'			=> array( 	'vimeo', 			'Vimeo' ),
		'el-icon-instagram'		=> array( 	'instagram',		'Instagram' ),
		'el-icon-soundcloud'	=> array( 	'soundcloud', 		'SoundCloud' ),
		'el-icon-flickr'		=> array( 	'flickr',			'Flickr' ),
		'el-icon-picasa'		=> array( 	'picasa',			'Picasa' ),
		'el-icon-foursquare'	=> array( 	'foursquare',		'Foursquare' ),
		'el-icon-skype'			=> array( 	'skype', 			'Skype' ),
		'el-icon-linkedin'		=> array( 	'linkedin', 		'LinkedIn' ),
		'el-icon-tumblr'		=> array( 	'tumblr',			'Tumblr',			true ),
		'el-icon-github'		=> array( 	'github',			'GitHub',			true ),
		'el-icon-dribbble'		=> array( 	'dribbble',			'Dribbble',			true ),
		'el-icon-wordpress'		=> array( 	'wordpress',		'WordPress',		true ),
		'el-icon-envelope'		=> array( 	array( 'mailto', 'newsletter' ), 'Email' ),
		'el-icon-podcast'		=> array( 	array( 'itunes', 'podcast', 'sermonaudio.com' ), 'Podcast' ),
		'el-icon-rss'			=> array( 	array( 'rss', 'feed', 'atom' ), 'RSS' ),
		'el-icon-website-alt'	=> array( 	'http', 			'Website' ), // anything not matching the above will show a generic website icon

	);

	// Return filtered
	return apply_filters( 'exodus_social_icon_map', $icon_map );

}

/**
 * List of sites with icons
 *
 * Shown to user in Theme Customizer
 *
 * @since 1.0
 * @param bool $or True to use "or"; otherwise "and"
 * @return string List of sites with icons
 */
function exodus_social_icon_sites( $or = false ) {

	$icon_map = exodus_social_icon_map();

	$sites_with_icons = '';

	$i = 0;

	// Remove hidden entries
	foreach ( $icon_map as $class => $site_data ) { // make list of sites with icons
		if ( ! empty( $site_data[2] ) ) {
			unset( $icon_map[$class] );
		}
	}

	// Count sites
	$sites_with_icons_count = count( $icon_map );

	// Build list
	foreach ( $icon_map as $site_data ) { // make list of sites with icons

		$match = $site_data[0];
		$name = $site_data[1];

		$i++;

		if ( $i > 1 ) { // not first one
			if ( $i < $sites_with_icons_count ) { // not last one
				$sites_with_icons .= _x( ', ', 'social icons list', 'exodus' );
			} else { // last one
				if ( ! empty( $or ) ) {
					$sites_with_icons .= _x( ' or ', 'social icons list', 'exodus' );
				} else {
					$sites_with_icons .= _x( ' and ', 'social icons list', 'exodus' );
				}
			}
		}

		$sites_with_icons .= $name;

	}

	return apply_filters( 'exodus_social_icon_sites', $sites_with_icons );

}

/**
 * Show icons
 *
 * @since 1.0
 * @param array $urls URLs set in Customizer
 * @param bool $return Return or echo
 * @return string Icons HTML if not echoing
 */
function exodus_social_icons( $urls, $return = false ) {

	$icon_list = '';

	// Social media URLs defined in Customizer
	if ( ! empty( $urls ) ) {

		// Available Icons
		$icon_map = exodus_social_icon_map();

		// Loop URLs (in order entered by user) to build icon list
		$icon_items = '';
		$url_array = explode( "\n", $urls );
		foreach ( $url_array as $url ) {

			$url = trim( $url );

			// URL is valid
			if ( ! empty( $url ) && ( '[ctcom_rss_url]' == $url || preg_match( '/^(http(s*)):\/\/(.+)\.(.+)|skype:(.+)|mailto:(.+)@(.+)\.(.+)/i', $url ) ) ) { // basic URL check

				// Find matching icon
				foreach ( $icon_map as $icon_class => $site_data ) {

					// Data
					$match = $site_data[0];
					$name = $site_data[1];

					// If "Any Website", use domain of website as name
					// Useful because it may not be a website at all being linked to (social profile, feed, etc.)
					// This is just a little more descriptive
					$domain_as_name = false;
					if ( 'http' == $match || 'Website' == $name ) {
						$domain_as_name = true;
					}

					// Prepare to match
					$url_checks = (array) $match;
					$url_matched = false;

					// Loop each string to match
					foreach ( $url_checks as $url_match ) {

						// Check URL for matching string
						if ( preg_match( '/' . preg_quote( $url_match ) . '/i', $url ) && ! $url_matched ) {

							// Success
							$url_matched = true;

							// Use domain as name (see above)
							if ( $domain_as_name ) {
								$parsed_url = parse_url( $url );
								$name = ! empty( $parsed_url['host'] ) ? str_replace( 'www.', '', $parsed_url['host'] ) : $name;
							}

							// Run shortcodes for [ctcom_rss_url]
							$url = do_shortcode( $url );

							// Append icon
							$icon_items .= '	<li><a href="' . esc_url( $url ) . '" class="' . esc_attr( $icon_class ) . '" title="' . esc_attr( $name ) . '" target="' . apply_filters( 'exodus_social_icons_link_target', '_blank' ) . '"></a></li>' . "\n";

						}

					}

					// Done
					if ( $url_matched ) {
						break;
					}

				}

			}

		}

		// Wrap with <ul> tags and apply shortcodes
		if ( ! empty( $icon_items ) ) {
			$icon_list = '<ul class="exodus-list-icons">' . "\n";
			$icon_list .= $icon_items;
			$icon_list .= '</ul>';
		}

	}

	// Echo or return filtered
	$icon_list = apply_filters( 'exodus_social_icons', $icon_list, $urls );
	if ( $return ) {
		return $icon_list;
	} else {
		echo $icon_list;
	}

}

