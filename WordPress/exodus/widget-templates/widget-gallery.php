<?php
/**
 * Gallery Widget Template
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

// Determine columns based on thumb size
$thumb_sizes = array(
	'small'		=> 3,
	'medium'	=> 2,
	'large'		=> 1,
);
$columns = $thumb_sizes[$instance['thumb_size']];

// Get ID's into list
$ids_array = array();
foreach ( $posts as $post ) {
	$ids_array[] = $post->ID;
}
$ids = implode( ',', $ids_array );

?>

<?php
// Show gallery
if ( ! empty( $posts ) ) :
?>

	<?php
	// Use gallery shortcode
	echo gallery_shortcode( array(
		'columns'	=> $columns,
		'ids'		=> $ids
	) );
	?>

	<?php
	// Link to gallery page
	if ( $instance['show_link'] && $instance['post_id'] != 'all' ) :
	?>
		<div class="exodus-gallery-widget-link">
			<a href="<?php echo esc_url( get_permalink( $instance['post_id'] ) ); ?>" title="<?php echo esc_attr( get_the_title( $instance['post_id'] ) ); ?>" class="exodus-button">
				<span class="<?php exodus_icon_class( 'gallery' ); ?> exodus-button-icon"></span>
				<?php _ex( 'View Gallery', 'gallery widget', 'exodus' ); ?>
			</a>
		</div>
	<?php endif; ?>

<?php
// Nothing found
else :
?>

	<div>
		<?php _ex( 'There are no images to show.', 'gallery widget', 'exodus' ); ?>
	</div>

<?php

endif;

// HTML After
echo $args['after_widget'];