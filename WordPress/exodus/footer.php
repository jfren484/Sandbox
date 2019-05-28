<?php
/**
 * Theme Footer
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Footer icons
$footer_icons = exodus_social_icons( ctfw_customization( 'footer_icon_urls' ), 'return' );

// Get first location post
$location = ctfw_first_ordered_post( 'ctc_location' );

// Get locations data, if showing location
$location_count = 0;
$locations_page = ctfw_get_page_by_template( 'locations.php' );
if ( ctfw_customization( 'show_footer_location' ) && ! empty( $location['ID'] ) ) {

	// Meta data for page
	extract( ctfw_location_data( $location['ID'] ) );

	// Get Locations page and count
	$location_counts = wp_count_posts( 'ctc_location' );
	$location_count = isset( $location_counts->publish ) ? $location_counts->publish : 0;

}

// Showing a map?
$has_map = false;
if ( ! empty( $map_lat ) && ! empty( $map_lng ) ) {
	$has_map = true;
}

// Get footer menu
$footer_menu = wp_nav_menu( array(
	'theme_location'	=> 'footer',
	'menu_id'			=> 'exodus-footer-menu-links',
	'container'			=> false, // don't wrap in div
	'depth'				=> 1, // no sub menus
	'fallback_cb'		=> false, // don't show pages if no menu found - show nothing
	'echo'				=> false // return instead
) );

// Notice / Copyright
$footer_notice = ctfw_customization( 'footer_notice' );

// Classes
$classes = array();

	// Location
	if ( $location_count ) {
		$classes[] = 'exodus-footer-has-location';
	} else {
		$classes[] = 'exodus-footer-no-location';
	}

	// Location Map
	if ( $has_map ) {
		$classes[] = 'exodus-footer-has-map';
	} else {
		$classes[] = 'exodus-footer-no-map';
	}

	// Phone
	if ( ! empty( $phone ) ) {
		$classes[] = 'exodus-footer-has-phone';
	} else {
		$classes[] = 'exodus-footer-no-phone';
	}

	// Social Icons
	if ( $footer_icons ) {
		$classes[] = 'exodus-footer-has-social-icons';
	} else {
		$classes[] = 'exodus-footer-no-social-icons';
	}

	// Menu
	if ( $footer_menu ) {
		$classes[] = 'exodus-footer-has-menu';
	} else {
		$classes[] = 'exodus-footer-no-menu';
	}

	// Notice
	if ( $footer_notice ) {
		$classes[] = 'exodus-footer-has-notice';
	} else {
		$classes[] = 'exodus-footer-no-notice';
	}

?>

		</div>

	</div>

	<footer id="exodus-footer" class="<?php echo esc_attr( implode( ' ', $classes ) ); ?>">

		<div id="exodus-footer-inner">

			<?php
			// Has location or social icons
			if ( $location_count || $footer_icons ) :
			?>

				<div id="exodus-footer-top">

					<div id="exodus-footer-top-inner" class="exodus-centered-content exodus-clearfix">

						<div id="exodus-footer-top-content">

							<?php
							// Show location with or without map
							if ( $location_count ) :
							?>

								<?php if ( $has_map ) : ?>

									<div id="exodus-footer-top-map">

										<?php

										// Generate Google Map image tag
										// This is HiDPI-ready with double scale constrained by width/height attributes
										$img_tag = ctfw_google_map_image( array(
											'latitude'		=> $map_lat,
											'longitude'		=> $map_lng,
											'type'			=> $map_type,
											'zoom'			=> $map_zoom,
											'width'			=> 440,
											'height'		=> 270,
											'alt'			=> $location['post_title'],
											'marker_color'	=> 'f2f2f2'
										) );

										?>

										<a href="<?php echo esc_url( get_permalink( $location['ID'] ) ); ?>" title="<?php the_title_attribute( array( 'post' => $location['ID'] ) ); ?>"><?php echo $img_tag; ?></a>

									</div>

								<?php endif; ?>

								<div id="exodus-footer-top-info">

									<?php if ( $address ) : ?>
										<h2 id="exodus-footer-top-address"><a href="<?php echo esc_url( get_permalink( $location['ID'] ) ); ?>"><?php echo esc_html( wptexturize( ctfw_address_one_line( $address ) ) ); ?></a></h2>
									<?php endif; ?>

									<?php if ( $times ) : ?>
										<div id="exodus-footer-top-times">
											<span class="el-icon-time-alt"></span>
											<?php echo nl2br( esc_html( wptexturize( $times ) ) ); ?>
										</div>
									<?php endif; ?>

									<?php if ( $phone || $email || $footer_icons ) : ?>

										<div id="exodus-footer-top-phone-icons">

											<?php if ( $phone ) : ?>
												<div id="exodus-footer-top-phone">
													<span class="el-icon-phone-alt"></span>
													<?php echo nl2br( esc_html( wptexturize( $phone ) ) ); ?>
												</div>
											<?php endif; ?>

											<?php if ( $email ) : ?>
												<div id="exodus-footer-top-email">
													<span class="el-icon-envelope"></span>
													<a href="mailto:<?php echo antispambot( $email, true ); ?>">
														<?php echo antispambot( $email ); // this on own line or validation can fail ?>
													</a>
												</div>
											<?php endif; ?>

											<?php if ( $footer_icons ) : ?>
												<div id="exodus-footer-top-social-icons"><?php echo $footer_icons; ?></div>
											<?php endif; ?>

										</div>

									<?php endif; ?>

									<ul id="exodus-footer-top-buttons">

										<li><a href="<?php echo esc_url( get_permalink( $location['ID'] ) ); ?>" id="exodus-footer-button-more" class="exodus-button"><?php _ex( 'More Info', 'footer', 'exodus' ); ?></a></li>

										<?php if ( ! empty( $directions_url ) ) : ?>
											<li><a href="<?php echo esc_url( $directions_url ); ?>" id="exodus-footer-button-directions" class="exodus-button" target="_blank"><?php _ex( 'Directions', 'footer', 'exodus' ); ?></a></li>
										<?php endif; ?>

										<?php if ( $location_count > 1 && isset( $locations_page->ID ) ) : // show link if have Locations page and more than one location ?>
											<li><a href="<?php echo esc_url( get_permalink( $locations_page->ID ) ); ?>" id="exodus-footer-button-locations" class="exodus-button"><?php _ex( 'All Locations', 'footer', 'exodus' ); ?></a></li>
										<?php endif; ?>

									</ul>

								</div>

							<?php endif; ?>

							<?php
							// Show social icons when there is no location to show
							if ( ! $location_count && $footer_icons ) :
							?>

								<div id="exodus-footer-social-icons-no-location">
									<?php echo $footer_icons; ?>
								</div>

							<?php endif; ?>

						</div>

					</div>

				</div>

			<?php endif; ?>

			<div id="exodus-footer-bottom" class="exodus-centered-content exodus-clearfix">

				<div id="exodus-footer-responsive-toggle">

					<a id="exodus-footer-full-site" href="#" class="exodus-button">
						<?php _e( 'View Full Site', 'exodus' ); ?>
					</a>

					<a id="exodus-footer-mobile-site" href="#" class="exodus-button">
						<?php _e( 'View Mobile Site', 'exodus' ); ?>
					</a>

				</div>

				<?php if ( $footer_menu ) : // show it in container if has links ?>

					<div id="exodus-footer-bottom-left" class="exodus-clearfix">

						<?php echo $footer_menu; ?>

					</div>

				<?php endif; ?>

				<?php if ( $footer_notice ) : ?>

					<div id="exodus-footer-bottom-right">

						<div id="exodus-notice">

							<?php echo nl2br( wptexturize( do_shortcode( $footer_notice ) ) ); ?>

						</div>

					</div>

				<?php endif; ?>

			</div>

		</div>

	</footer>

</div>

<?php
wp_footer(); // a hook for extra code in the footer, if needed
?>

</body>
</html>