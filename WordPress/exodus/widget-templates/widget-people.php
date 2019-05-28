<?php
/**
 * People Widget Template
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

	// Get people meta data
	// $position
	extract( ctfw_person_data() );

	// Classes always used
	$classes = array( 'exodus-widget-entry', 'exodus-people-widget-entry', 'exodus-clearfix' );

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

				<?php if ( $instance['show_position'] && $position ) : ?>
					<li class="exodus-people-widget-entry-position">
						<?php echo esc_html( $position ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_phone'] && $phone ) : ?>
					<li class="exodus-people-widget-entry-phone">
						<?php echo esc_html( $phone ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_email'] && $email ) : ?>
					<li class="exodus-people-widget-entry-email">
						<a href="mailto:<?php echo antispambot( $email, true ); ?>"><?php echo antispambot( $email ); ?></a>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_icons'] && $urls ) : ?>
					<li class="exodus-widget-entry-icons exodus-people-widget-entry-icons">
						<?php exodus_social_icons( $urls ); ?>
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
		<?php _ex( 'There are no people to show.', 'people widget', 'exodus' ); ?>
	</div>
	<?php

}

// HTML After
echo $args['after_widget'];