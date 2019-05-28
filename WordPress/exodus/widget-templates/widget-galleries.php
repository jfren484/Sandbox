<?php
/**
 * Galleries Widget Template
 *
 * Produces output for appropriate widget class in framework.
 * $this, $instance (sanitized field values) and $args are available.
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

// Have posts
if ( ! empty( $posts ) ) :
?>

	<ul>

		<?php
		foreach ( $posts as $post_id => $post_data ) :

			$post = $post_data['post'];
			setup_postdata( $post );

		?>

			<li>

				<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a>

				<?php if ( isset( $post_data['image_count'] ) ) : ?>
					<span class="exodus-list-item-count"><?php echo $post_data['image_count']; ?></span>
				<?php endif; ?>

			</li>

		<?php endforeach; ?>

	</ul>

<?php

endif;

// No items found
if ( empty( $posts ) ) :

	?>
	<div>
		<?php _ex( 'There are no galleries to show.', 'galleries widget', 'exodus' ); ?>
	</div>
	<?php

endif;

// HTML After
echo $args['after_widget'];
