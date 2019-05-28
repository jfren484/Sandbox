<?php
/**
 * Location content for:
 *
 * 1. Full / Single
 * 2. Short / Multiple
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get data
// $address, $show_directions_link, $directions_url, $phone, $times, $map_lat, $map_lng, $map_type, $map_zoom
extract( ctfw_location_data() );

/*************************************
 * 1. FULL / SINGLE
 *************************************/

if ( is_singular( get_post_type() ) ) :

	$google_map = ctfw_google_map( array(
		'latitude'	=> $map_lat,
		'longitude'	=> $map_lng,
		'type'		=> $map_type,
		'zoom'		=> $map_zoom
	) );

?>

	<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-full exodus-location-full' ); ?>>

		<?php get_template_part( 'content-location-header' ); ?>

		<?php if ( $google_map ) : ?>
			<div class="exodus-location-full-map">
				<?php echo $google_map; ?>
			</div>
		<?php endif; ?>

		<?php if ( $directions_url ) : ?>
			<div class="exodus-location-full-direction">
				<a href="<?php echo esc_url( $directions_url ); ?>" target="_blank" class="exodus-button">
					<span class="<?php exodus_icon_class( 'location-directions' ); ?> exodus-button-icon"></span>
					<?php _ex( 'Get Directions', 'location', 'exodus' ); ?>
				</a>
			</div>
		<?php endif; ?>

		<?php if ( ctfw_has_content() ) : // might not be any content, so let header sit flush with bottom ?>
			<div class="exodus-entry-content exodus-clearfix">

				<?php the_content(); ?>

				<?php do_action( 'exodus_after_content' ); ?>

			</div>
		<?php endif; ?>

		<?php get_template_part( 'content-footer-full' ); // multipage nav, term lists, "Edit" button, etc. ?>

	</article>

<?php

/*************************************
 * 2. SHORT / MULTIPLE
 *************************************/

else :

?>

	<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-short exodus-location-short' ); ?>>

		<?php get_template_part( 'content-location-header' ); ?>

		<?php if ( ctfw_has_excerpt() || ctfw_has_more_tag() ) : ?>
			<div class="exodus-entry-content exodus-clearfix">
				<?php exodus_short_content(); // output excerpt or post content up until <!--more--> quicktag used ?>
			</div>
		<?php endif; ?>

		<?php get_template_part( 'content-footer-short' ); // show appropriate button(s) ?>

	</article>

<?php endif; ?>