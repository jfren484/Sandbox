<?php
/**
 * Post Header Meta (Full and Short)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get data
// $address, $show_directions_link, $directions_url, $phone, $email, $times, $map_lat, $map_lng, $map_type, $map_zoom
extract( ctfw_location_data() );

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

		<ul class="exodus-entry-meta">

			<?php if ( $address ) : ?>
				<li class="exodus-location-address exodus-content-icon">
					<span class="<?php exodus_icon_class( 'location-address' ); ?>"></span>
					<?php echo nl2br( wptexturize( $address ) ); ?>
				</li>
			<?php endif; ?>

			<?php if ( $times ) : ?>
				<li class="exodus-location-times exodus-content-icon">
					<span class="<?php exodus_icon_class( 'location-times' ); ?>"></span>
					<?php echo nl2br( wptexturize( $times ) ); ?>
				</li>
			<?php endif; ?>

			<?php if ( $phone ) : ?>
				<li class="exodus-location-phone exodus-content-icon">
					<span class="<?php exodus_icon_class( 'location-phone' ); ?>"></span>
					<?php echo esc_html( $phone ); ?>
				</li>
			<?php endif; ?>

			<?php if ( $email ) : ?>
				<li class="exodus-location-email exodus-content-icon">
					<span class="<?php exodus_icon_class( 'location-email' ); ?>"></span>
					<a href="mailto:<?php echo antispambot( $email, true ); ?>">
						<?php echo antispambot( $email ); // this on own line or validation can fail ?>
					</a>
				</li>
			<?php endif; ?>

		</ul>

	</div>

</header>
