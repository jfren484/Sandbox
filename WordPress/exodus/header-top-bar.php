<?php
/**
 * Header Top Bar
 *
 * This is loaded by header.php.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

global $post;

// What to show at top right
$top_right = ctfw_customization( 'top_right' );

// Showing sermons, events or posts at top-right?
$top_right_posts = array();
$show_top_right_posts = in_array( $top_right, array( 'sermons', 'events', 'posts' ) );
if ( $show_top_right_posts ) {

	// Get and sanitize limit
	$max_limit = 2;
	$limit = absint( ctfw_customization( 'top_right_items_limit' ) );
	if ( $limit > $max_limit ) {
		$limit = $max_limit;
	}

	// Get date format
	$date_format = get_option( 'date_format' );

	// Today, tomorrow and yesterday in local time
	$today = date_i18n( 'Y-m-d' );
	$today_ts = strtotime( $today );
	$tomorrow =  date_i18n( 'Y-m-d', $today_ts + DAY_IN_SECONDS ); // add one day in seconds to today
	$yesterday =  date_i18n( 'Y-m-d', $today_ts - DAY_IN_SECONDS ); // subtract one day in seconds from today

	// Get sermons, events or posts
	if ( 'sermons' == $top_right ) {
		$top_right_posts = get_posts( array(
			'post_type'       	=> 'ctc_sermon',
			'orderby'         	=> 'publish_date',
			'order'           	=> 'desc',
			'numberposts'     	=> $limit,
			'suppress_filters'	=> false // keep WPML from showing posts from all languages: http://bit.ly/I1JIlV + http://bit.ly/1f9GZ7D
		) );
	} elseif ( 'events' == $top_right ) {
		$top_right_posts = ctfw_get_events( array(
			'timeframe'	=> 'upcoming',
			'limit'	=> $limit,
		) );
	} elseif ( 'posts' == $top_right ) {
		$top_right_posts = get_posts( array(
			'post_type'       	=> 'post',
			'orderby'         	=> 'publish_date',
			'order'           	=> 'desc',
			'numberposts'     	=> $limit,
			'suppress_filters'	=> false // keep WPML from showing posts from all languages: http://bit.ly/I1JIlV + http://bit.ly/1f9GZ7D
		) );
	}

}

// Do not show if no search, no menu set, "Nothing" is set, or showing latest posts but found none
if ( ! ctfw_customization( 'top_search' ) && ! has_nav_menu( 'top' ) && ( 'none' == $top_right || ( $show_top_right_posts && ! $top_right_posts ) ) ) {
	return;
}

?>

<div id="exodus-top-bar">

	<div id="exodus-top-bar-inner">

		<div id="exodus-top-bar-content" class="exodus-centered-content exodus-clearfix">

			<?php
			// Search Icon
			if ( ctfw_customization( 'top_search' ) ) :
			?>

				<a href="#" id="exodus-top-bar-search-icon" class="el-icon-search"></a>

				<div id="exodus-top-bar-search-form">
					<?php get_search_form(); ?>
				</div>

			<?php endif; ?>

			<?php

			// Top Menu
			if ( has_nav_menu( 'top' ) ) :

			?>

				<div id="exodus-top-bar-menu">

					<?php
					wp_nav_menu( array(
						'theme_location'	=> 'top',
						'menu_id'			=> 'exodus-top-bar-menu-links',
						'container'			=> false, // don't wrap in div
						'depth'				=> 1, // no sub menus
						'fallback_cb'		=> false // don't show pages if no menu found - show nothing
					) );
					?>

				</div>

			<?php endif; ?>

			<?php

			// Top Right
			if ( 'none' != $top_right ) :

			?>

				<?php

				// Sermons, events or posts
				if ( $top_right_posts ) :

				?>

					<?php

					// Loop posts
					$old_post = $post;
					foreach ( $top_right_posts as $post ) :

						// Make the_title() , the_permalink() and so on work
						setup_postdata( $post );

						// Prepare date
						$show_date = '';
						$publish_date = date_i18n( 'Y-m-d', strtotime( $post->post_date ) );
						if ( in_array( $top_right, array( 'sermons', 'posts' ) ) ) { // sermon or post

							// Today, yesterday or date
							if ( $today == $publish_date ) {
								$show_date = _x( 'Today', 'top right items', 'exodus' );
							} elseif ( $yesterday == $publish_date ) {
								$show_date = _x( 'Yesterday', 'top right items', 'exodus' );
							} else {
								/* translators: see date formatting documentation: http://codex.wordpress.org/Formatting_Date_and_Time */
								$show_date = get_the_date( _x( 'F j', 'top right items', 'exodus' ) );
							}

						} elseif ( 'events' == $top_right ) { // event

							// Get date range
							$start_date = get_post_meta( $post->ID , '_ctc_event_start_date' , true );
							$end_date = get_post_meta( $post->ID , '_ctc_event_end_date' , true );

							// Have a start date
							if ( $start_date ) {

								// Start and end dates as local timestamps
								$start_date_ts = strtotime( date_i18n( 'Y-m-d', strtotime( $start_date ) ) );
								$end_date_ts = strtotime( date_i18n( 'Y-m-d', strtotime( $end_date ) ) );

								// Today, tomorrow or date
								if ( $today_ts >= $start_date_ts && $today_ts <= $end_date_ts ) { // start date or any date in range is today
									$show_date = _x( 'Today', 'top right items', 'exodus' );
								} elseif ( $start_date == $tomorrow ) {
									$show_date = _x( 'Tomorrow', 'top right items', 'exodus' );
								} else {
									/* translators: see date formatting documentation: http://codex.wordpress.org/Formatting_Date_and_Time */
									$show_date = date_i18n( _x( 'F j', 'top right items', 'exodus' ), strtotime( $start_date ) );
								}

							}

						}

					?>

						<div class="exodus-top-bar-right-item exodus-top-bar-right-content">

							<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">

								<?php if ( $show_date ) : ?>
									<span class="exodus-top-bar-right-item-date">
										<?php echo esc_html( $show_date ); ?>
									</span>
								<?php endif; ?>

								<span class="exodus-top-bar-right-item-title"><?php echo ctfw_shorten( get_the_title(), 24 ); // shorten title without truncating words ?></span>

							</a>

						</div>

					<?php

					// End Loop
					endforeach;

					// Restore $post global
					wp_reset_postdata();
					$post = $old_post; // wp_reset_postdata() isn't enough with this code

					?>

				<?php

				// Tagline on right
				elseif ( 'tagline' == $top_right ) :

				?>

					<div id="exodus-top-bar-tagline" class="exodus-top-bar-right-content">
						<?php bloginfo( 'description' ); ?>
					</div>

				<?php

				// Custom Content
				elseif ( 'content' == $top_right ) :

				?>

					<div id="exodus-top-bar-custom-content" class="exodus-top-bar-right-content">
						<?php echo wptexturize( do_shortcode( ctfw_customization( 'top_right_content' ) ) ); ?>
					</div>

				<?php endif; ?>


			<?php endif; ?>

		</div>

	</div>

</div>
