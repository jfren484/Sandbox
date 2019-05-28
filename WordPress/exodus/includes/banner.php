<?php
/**
 * Banner Functions
 *
 * @package    Exodus
 * @subpackage Functions
 * @copyright  Copyright (c) 2014 - 2015, ChurchThemes.com
 * @link       https://churchthemes.com/themes/exodus
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 * @since      1.0
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

/*********************************
 * BANNER
 *********************************

/**
 * Get all pages with Banner
 *
 * Returns pages with _ctcom_banner_related set.
 *
 * @since 1.0
 * @return array All pages using option to show on related pages
 */
function exodus_banner_related_pages() {

	$pages_query = new WP_Query( array(
		'post_type'			=> 'page',
		'post_status'		=> 'any',
		'nopaging'			=> true,
		'posts_per_page'	=> -1,
		'meta_query'		=> array(
			array(
				'key' 			=> '_ctcom_banner_related', // has banner related checked
				'value' 		=> '1'
			)
		),
	) );

	return apply_filters( 'exodus_banner_pages', $pages_query->posts );

}

/**
 * Banner data
 *
 * Get data for use with building the banner and showing title in page templates.
 *
 * @since 1.0
 * @global object Post object
 * @return array Banner data
 */
function exodus_banner_data() {

	global $post;

	// Default data
	$data = array();
	$data['page'] = false;
	$data['relation'] = false;
	$data['no_text'] = false;

	// Priority 1: Page with featured image is being shown -- use that
	if ( is_page() && has_post_thumbnail() ) {
		$data['relation'] = 'page_self';
		$data['page'] = $post; // use current page
	}

	// Priority 2: Attachment with parent PAGE having featured image -- use parent page
	// In this case, "related" setting does not matter (attachment is basically a part of the parent page)
	// Note: this is ONLY for pages (not sermons, events, etc.) because page uses the banner featured image
	if ( is_attachment() && has_post_thumbnail( $post->post_parent ) && 'page' == get_post_type( $post->post_parent ) ) {
		$data['relation'] = 'attachment_parent';
		$data['page'] = get_post( $post->post_parent ); // show banner from this page
	}

	// Priority 3: Child page without featured image - use banner of nearest ancestor that has one
	if ( empty( $data['page'] ) && is_page() && ! empty( $post->post_parent ) ) { // it's a child page

		// Loop pages
		$ancestor_pages = $post->ancestors;
		foreach ( $ancestor_pages as $ancestor_page_id ) {

		 	// Has _ctcom_banner_related set?
		 	if ( get_post_meta( $ancestor_page_id, '_ctcom_banner_related', true ) ) {

				// Has featured image?
				if ( has_post_thumbnail( $ancestor_page_id ) ) {

					$data['relation'] = 'page_ancestor';

					$data['page'] = get_post( $ancestor_page_id ); // show banner from this page

					break;

				}

			}

		}

	}

	// Priority 4: "Posts page" is set to a page using Blog template
	$blog_page_id = get_option( 'page_for_posts' );
	if ( empty( $data['page'] ) && is_home() && $blog_page_id && has_post_thumbnail( $blog_page_id ) ) {

		// Get "Posts page" ID
		$data['page'] = get_page( $blog_page_id );

		// Featured image from the blog page itself
		$data['relation'] = 'page_self';

	}

	// Priority 5: Not on page with featured image -- use related page's featured image
	if ( empty( $data['page'] ) ) {

		$data['relation'] = 'content_type';

		// Current content type's page templates
		$page_templates = ctfw_current_content_type_data( 'page_templates' );

		// Stop if no content type or templates
		if ( $page_templates ) {

			// Loop pages set to show banner on related pages
			$banner_pages = exodus_banner_related_pages();
			foreach ( $banner_pages as $page ) {

				// Get page's template
				$page_template = basename( get_post_meta( $page->ID, '_wp_page_template', true ) );

				// Page has content type matching current content type
				if ( $page_template && in_array( $page_template, $page_templates ) ) {

					// Has featured image?
					if ( has_post_thumbnail( $page->ID ) ) {
						$data['page'] = $page; // show banner from this page
					}

					break;

				}

			}

		}

	}

	// Related banner page was found
	if ( $data['page'] ) {

		// Show title/breadcrumbs over image or not?
		$data['no_text'] = get_post_meta( $data['page']->ID, '_ctcom_banner_no_text', true );

	}

	// Return filtered
	return apply_filters( 'exodus_banner_data', $data );

}