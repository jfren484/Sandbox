<?php
/**
 * Post Header Meta (Full and Short)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get data
// $date (localized range), $start_date, $end_date, $start_time, $end_time, $start_time_formatted, $end_time_formatted, $hide_time_range, $time (description), $time_range, $time_range_and_description, $time_range_or_description, $venue, $address, $show_directions_link, $directions_url, $map_lat, $map_lng, $map_type, $map_zoom
// Recurrence fields, $recurrence_note and $recurrence_note_short are also provided as well as $excluded_dates_note (Pro).
extract( ctfw_event_data() );

?>

<header class="exodus-entry-header exodus-clearfix">

	<?php if ( has_post_thumbnail() ) : ?>
		<div class="exodus-entry-image">
			<?php exodus_post_image(); ?>
		</div>
	<?php endif; ?>

	<div class="exodus-entry-title-meta">

		<?php if ( ctfw_has_title() ) : ?>
			<h1 class="exodus-entry-title<?php if ( is_singular( get_post_type() ) ) : ?> exodus-main-title<?php endif; ?>">
				<?php exodus_post_title(); // will be linked on short ?>
			</h1>
		<?php endif; ?>

		<?php if ( $date || $time || $venue || $address ) : ?>

			<ul class="exodus-entry-meta">

				<?php if ( $date ) : ?>
					<li class="exodus-entry-date">
						<?php echo esc_html( $date ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $recurrence_note && is_singular() ) : // no on list ?>
					<li class="exodus-content-icon exodus-event-meta-recurrence">

						<span class="<?php exodus_icon_class( 'event-recurrence' ); ?>"></span>

						<?php if ( strlen( $recurrence_note ) != strlen( $recurrence_note_short ) ) : ?>

							<a href="#" title="<?php echo esc_attr( $recurrence_note ); ?>">
								<?php echo $recurrence_note_short; ?>
							</a>

						<?php else : ?>
								<?php echo $recurrence_note_short; ?>
						<?php endif; ?>

					</li>
				<?php endif; ?>

				<?php if ( $excluded_dates_note && ! $recurrence_note && is_singular() ) : // no on list and not when showing recurrence note, which itself shows excluded dates. ?>
					<li class="exodus-content-icon exodus-event-meta-excluded-dates">

						<span class="<?php exodus_icon_class( 'event-excluded' ); ?>"></span>

						<a href="#" title="<?php echo esc_attr( $excluded_dates_note ); ?>">
							<?php esc_html_e( 'Excluded Dates', 'exodus' ); ?>
						</a>

					</li>
				<?php endif; ?>

				<?php if ( $time_range_and_description ) : ?>
					<li class="exodus-content-icon">
						<span class="<?php exodus_icon_class( 'event-time' ); ?>"></span>
						<?php echo nl2br( wptexturize( $time_range_and_description ) ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $venue ) : ?>
					<li class="exodus-content-icon">
						<span class="<?php exodus_icon_class( 'event-venue' ); ?>"></span>
						<?php echo esc_html( $venue ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $address ) : ?>
					<li class="exodus-content-icon">
						<span class="<?php exodus_icon_class( 'event-address' ); ?>"></span>
						<?php echo nl2br( wptexturize( $address ) ); ?>
					</li>
				<?php endif; ?>

			</ul>

		<?php endif; ?>

	</div>

</header>
