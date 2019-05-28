<?php
/**
 * Events Widget Template
 *
 * Produces output for appropriate widget class in framework.
 * $this, $instance (sanitized field values) and $args are available.
 *
 * $this->ctfw_get_posts() can be used to produce a query according to widget field values.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// HTML Before
echo $args['before_widget'];

// Title
$title = apply_filters( 'widget_title', $instance['title'] );
if ( ! empty( $title ) ) {
	echo $args['before_title'] . $title . $args['after_title'];
}

// Get posts
$posts = ctfw_get_events( $instance ); // get events based on options - upcoming/past, limit, etc.

// Loop posts
$i = 0;
foreach ( $posts as $post ) : setup_postdata( $post ); $i++;

	// Get event meta data
	// $date (localized range), $start_date, $end_date, $start_time, $end_time, $start_time_formatted, $end_time_formatted, $hide_time_range, $time (description), $time_range, $time_range_and_description, $time_range_or_description, $venue, $address, $show_directions_link, $directions_url, $map_lat, $map_lng, $map_type, $map_zoom
	// Recurrence fields, $recurrence_note and $recurrence_note_short are also provided as well as $excluded_dates_note (Pro).
	extract( ctfw_event_data() );

	// Classes always used
	$classes = array( 'exodus-widget-entry', 'exodus-events-widget-entry', 'exodus-clearfix' );

	// First in loop?
	if ( 1 == $i ) {
		$classes[] = 'exodus-widget-entry-first';
	}

	// Has image and showing it?
	if ( $instance['show_image'] && has_post_thumbnail() ) {
		$classes[] = 'exodus-widget-entry-has-image';
	} else {
		$classes[] = 'exodus-widget-entry-no-image';
	}

	// Built string of classes separated by space
	$classes = implode( ' ', $classes );

?>

	<article <?php post_class( $classes ); ?>>

	<header class="exodus-clearfix">

		<?php if ( $instance['show_image'] && has_post_thumbnail() ) : ?>
			<div class="exodus-widget-entry-thumb">
				<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_post_thumbnail( 'exodus-thumb-small', array( 'class' => 'exodus-image' ) ); ?></a>
			</div>
		<?php endif; ?>

		<h1 class="exodus-widget-entry-title"><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>

		<ul class="exodus-widget-entry-meta exodus-clearfix">

			<?php if ( $instance['show_date'] && $date ) : ?>
				<li class="exodus-widget-entry-date exodus-locations-widget-entry-date">
					<?php echo esc_html( $date ); ?>
				</li>
			<?php endif; ?>

			<?php if ( $instance['show_time'] && $time_range_or_description ) : ?>
				<li class="exodus-events-widget-entry-time">
					<?php echo esc_html( $time_range_or_description ); // show Time Range if given; otherwise Description (not both) ?>
				</li>
			<?php endif; ?>

			<?php if ( $instance['show_category'] && $categories = get_the_term_list( $post->ID, 'ctc_event_category', '', __( ', ', 'exodus' ) ) ) : ?>
				<li class="exodus-events-widget-entry-categories">
					<?php echo $categories; ?>
				</li>
			<?php endif; ?>

		</ul>

	</header>

	<?php if ( get_the_excerpt() && ! empty( $instance['show_excerpt'] )): ?>
		<div class="exodus-widget-entry-content">
			<?php the_excerpt(); ?>
		</div>
	<?php endif; ?>

</article>

<?php

// End Loop
endforeach;

// No items found
if ( empty( $posts ) ) {

	?>
	<div>
		<?php _ex( 'There are no events to show.', 'events widget', 'exodus' ); ?>
	</div>
	<?php

}

// HTML After
echo $args['after_widget'];