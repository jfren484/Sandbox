<?php
/**
 * Locations Widget Template
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
$posts = $this->ctfw_get_posts(); // widget's default query according to field values

// Loop Posts
$i = 0;
foreach ( $posts as $post ) : setup_postdata( $post ); $i++;

	// Get location meta data
	// $address, $show_directions_link, $directions_url, $phone, $email, $times, $map_lat, $map_lng, $map_type, $map_zoom
	extract( ctfw_location_data() );

	// Classes always used
	$classes = array( 'exodus-widget-entry', 'exodus-location-widget-entry', 'exodus-clearfix' );

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

				<?php if ( $instance['show_address'] && $address ) : ?>
					<li class="exodus-locations-widget-entry-address">
						<?php echo nl2br( esc_html( $address ) ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_phone'] && $phone ) : ?>
					<li class="exodus-locations-widget-entry-phone">
						<?php echo esc_html( $phone ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_email'] && $email ) : ?>
					<li class="exodus-locations-widget-entry-email">
						<a href="mailto:<?php echo antispambot( $email, true ); ?>">
							<?php echo antispambot( $email ); // this on own line or validation can fail ?>
						</a>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_times'] && $times ) : ?>
					<li class="exodus-locations-widget-entry-times">
						<?php echo nl2br( wptexturize( $times ) ); ?>
					</li>
				<?php endif; ?>

			</ul>

		</header>

		<?php
		if ( $instance['show_map']) :?>

			<?php

			// Map arguments
			$map_args = array(
				'latitude'		=> $map_lat,
				'longitude'		=> $map_lng,
				'type'			=> $map_type,
				'zoom'			=> $map_zoom,
				'width'			=> 300, // sidebar
				'height'		=> 200,
				'alt'			=> get_the_title(),
				'marker_color'	=> 'f2f2f2'
			);

			// Increased map size for homepage
			if ( is_page_template( CTFW_THEME_PAGE_TPL_DIR . '/homepage.php' ) ) {
				$map_args['width']	= 540;
				$map_args['height']	= 270;
			}

			// Generate Google Map image tag
			// This is HiDPI-ready with double scale constrained by width/height attributes
			$img_tag = ctfw_google_map_image( $map_args );

			// Map generated
			if ( $img_tag ) :

			?>

				<div class="exodus-locations-widget-entry-map exodus-clearfix">
					<a href="<?php echo esc_url( get_permalink() ); ?>" title="<?php the_title_attribute(); ?>"><?php echo $img_tag; ?></a>
				</div>

			<?php endif; ?>

		<?php endif; ?>

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
		<?php _ex( 'There are no locations to show.', 'locations widget', 'exodus' ); ?>
	</div>
	<?php

}

// HTML After
echo $args['after_widget'];