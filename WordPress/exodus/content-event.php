<?php
/**
 * Event content for:
 *
 * 1. Full / Single
 * 2. Short / Multiple
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get data
// $date (localized range), $start_date, $end_date, $start_time, $end_time, $start_time_formatted, $end_time_formatted, $hide_time_range, $time (description), $time_range, $time_range_and_description, $time_range_or_description, $venue, $address, $show_directions_link, $directions_url, $map_lat, $map_lng, $map_type, $map_zoom
// Recurrence fields, $recurrence_note and $recurrence_note_short are also provided as well as $excluded_dates_note (Pro).
extract( ctfw_event_data() );

/*************************************
 * 1. FULL / SINGLE
 *************************************/

if ( is_singular( get_post_type() ) ) :

	// Use Google Maps JavaScript API
	// See style.css .ctfw-google-map for responsive ratio (map won't show without it)
	// Image maps API sllows up to 640 (not enough for here)
	$google_map = ctfw_google_map( array(
		'latitude'	=> $map_lat,
		'longitude'	=> $map_lng,
		'type'		=> $map_type,
		'zoom'		=> $map_zoom
	) );

?>

	<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-full exodus-event-full' ); ?>>

		<?php get_template_part( 'content-event-header' ); ?>

		<?php if ( $google_map ) : ?>
			<div class="exodus-event-full-map">
				<?php echo $google_map; ?>
			</div>
		<?php endif; ?>

		<?php if ( $directions_url || $registration_url ) : ?>

			<ul id="exodus-event-buttons" class="exodus-list-buttons">

				<?php

				// Make sure there is no whitespace between items since they are inline-block

				if ( $directions_url ) :

					?><li>
						<a href="<?php echo esc_url( $directions_url ); ?>" target="_blank">
							<span class="exodus-button-icon <?php exodus_icon_class( 'event-directions' ); ?>"></span>
							<?php echo esc_html( _x( 'Get Directions', 'event', 'exodus' ) ); ?>
						</a>
					</li><?php

				endif;

				if ( $registration_url ) :

					?><li>
						<a href="<?php echo esc_url( $registration_url ); ?>" target="_blank">
							<span class="exodus-button-icon <?php exodus_icon_class( 'event-register' ); ?>"></span>
							<?php echo esc_html( _x( 'Register', 'event', 'exodus' ) ); ?>
						</a>
					</li><?php

				endif;

				?>

			</ul>

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

	<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-short exodus-event-short' ); ?>>

		<?php get_template_part( 'content-event-header' ); ?>

		<?php if ( ctfw_has_excerpt() || ctfw_has_more_tag() ) : ?>
			<div class="exodus-entry-content exodus-clearfix">
				<?php exodus_short_content(); // output excerpt or post content up until <!--more--> quicktag used ?>
			</div>
		<?php endif; ?>

		<?php get_template_part( 'content-footer-short' ); // show appropriate button(s) ?>

	</article>

<?php endif; ?>