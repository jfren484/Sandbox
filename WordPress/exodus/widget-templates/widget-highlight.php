<?php
/**
 * Highlight Widget Template
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
	$title = $args['before_title'] . $title . $args['after_title'];
}

// Has valid image?
$has_image = wp_get_attachment_image_src( $instance['image_id'] ) ? true : false;

// Important that there is no whitespace between elements
?><div<?php

	$li_classes = array( 'exodus-caption-image', 'exodus-highlight' );

	// Has image?
	if ( $has_image ) {
		$li_classes[] = 'exodus-caption-image-has-image';
	} else {
		$li_classes[] = 'exodus-caption-image-no-image';
	}

	// Is it linked?
	if ( $instance['click_url'] ) {
		$li_classes[] = 'exodus-highlight-linked';
	}

	// Link opens in new window?
	if ( $instance['click_new'] ) {
		$li_classes[] = 'exodus-highlight-click-new';
	}

	// Has title?
	if ( $instance['title'] ) {
		$li_classes[] = 'exodus-highlight-has-title';
	} else {
		$li_classes[] = 'exodus-highlight-no-title';
	}

	// Has description?
	if ( $instance['description'] ) {
		$li_classes[] = 'exodus-highlight-has-description';
	} else {
		$li_classes[] = 'exodus-highlight-no-description';
	}

	// Has title or description (caption)?
	if ( $instance['title'] || $instance['description'] ) {
		$li_classes[] = 'exodus-highlight-has-caption';
	} else {
		$li_classes[] = 'exodus-highlight-no-caption';
	}

	// Add classes to div
	if ( ! empty( $li_classes ) ) {
		echo ' class="' . implode( ' ', $li_classes ). '"';
	}

?>>

	<div class="exodus-caption-image-inner">

		<?php if ( $instance['click_url'] ) : ?>
			<a href="<?php echo esc_url( do_shortcode( $instance['click_url'] ) ); ?>"<?php if ( $instance['click_new'] ) : ?> target="_blank"<?php endif; ?>>
		<?php endif; ?>

			<?php if ( $has_image ) : // valid image specified ?>
				<?php echo wp_get_attachment_image( $instance['image_id'], 'exodus-rect-large', false, array( 'class' => 'exodus-image' ) ); ?>
			<?php else : // use transparent placeholder thumbnail of proper proportion ?>
				<img src="<?php echo apply_filters( 'exodus_thumb_placeholder_url', CTFW_THEME_URL . '/images/thumb-placeholder.png' ); ?>" alt="">
			<?php endif; ?>

			<?php if ( $title || $instance['description'] ) : ?>
				<div class="exodus-caption-image-caption">
			<?php endif; ?>

				<?php if ( $title ) : ?>
					<div class="exodus-caption-image-title">
						<?php echo $title; ?>
					</div>
				<?php endif; ?>

				<?php if ( $instance['description'] ) : ?>
					<div class="exodus-caption-image-description">
						<?php echo $instance['description']; ?>
					</div>
				<?php endif; ?>

			<?php if ( $title || $instance['description'] ) : ?>
				</div>
			<?php endif; ?>

		<?php if ( $instance['click_url'] ) : ?>
			</a>
		<?php endif; ?>

	</div>

</div><?php // Important that there is no whitespace between elements

// HTML After
echo $args['after_widget'];