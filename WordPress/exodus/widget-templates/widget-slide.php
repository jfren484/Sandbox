<?php
/**
 * Slide Widget Template
 *
 * Produces output for appropriate widget class in framework.
 * $this, $instance (sanitized field values) and $args are available.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get slide image
$slide_img = wp_get_attachment_image_src( $instance['image_id'], 'exodus-slide' );

// Slide has valid image
if ( $slide_img ) :

	$video_url = $instance['video'];

	// Use video URL if is video slide
	$click_url = $video_url ? $video_url : $instance['click_url'];

?>

	<li<?php

		$li_classes = array( 'exodus-slide' );

		if ( $video_url ) {
			$li_classes[] = 'exodus-slide-video';
		} else {
			$li_classes[] = 'exodus-slide-not-video';
		}

		if ( $instance['click_url'] ) {
			$li_classes[] = 'exodus-slide-linked';
		}

		if ( $instance['click_new'] ) {
			$li_classes[] = 'exodus-slide-click-new'; // for JavaScript
		}

		if ( $instance['title'] ) {
			$li_classes[] = 'exodus-slide-has-title';
		} else {
			$li_classes[] = 'exodus-slide-no-title';
		}

		if ( $instance['description'] ) {
			$li_classes[] = 'exodus-slide-has-description';
		} else {
			$li_classes[] = 'exodus-slide-no-description';
		}

		if ( $instance['title'] || $instance['description'] ) {
			$li_classes[] = 'exodus-slide-has-caption';
		} else {
			$li_classes[] = 'exodus-slide-no-caption';
		}

		if ( ! empty( $li_classes ) ) {
			echo ' class="' . implode( ' ', $li_classes ). '"';
		}

	?>>

		<div class="exodus-slide-image-container">

			<?php if ( $click_url ) : // image is linked ?>
				<a href="<?php echo esc_url( do_shortcode( $click_url ) ); ?>"<?php if ( $instance['click_new'] ) : ?> target="_blank"<?php endif; ?>>
			<?php endif; ?>

				<img src="<?php echo esc_url( $slide_img[0] ); ?>" width="<?php echo esc_attr( $slide_img[1] ); ?>" height="<?php echo esc_attr( $slide_img[2] ); ?>" class="exodus-image" alt="" title="">

				<div class="exodus-slide-overlay">
					<span class="exodus-slide-play-icon el-icon-play-circle"></span>
				</div>

			<?php if ( $click_url ) : // image is linked ?>
				</a>
			<?php endif; ?>

		</div>

		<?php if ( $instance['title'] || $instance['description'] ) : // title or description provided ?>

			<div class="exodus-slide-caption">

				<div class="exodus-slide-caption-inner exodus-centered-content">

					<div class="exodus-slide-caption-content">

						<?php if ( $instance['title'] ) : // title provided ?>

							<?php if ( $click_url ) : // slide is linked ?>

								<a href="<?php echo do_shortcode( $click_url ); ?>" class="exodus-slide-title"<?php if ( $instance['click_new'] ) : ?> target="_blank"<?php endif; ?>>
									<?php echo force_balance_tags( $instance['title'] ); // auto-close <b> tag to prevent messing up whole page ?>
								</a>

							<?php else : // slide not linked ?>

								<div class="exodus-slide-title"><?php echo force_balance_tags( $instance['title'] ); // auto-close <b> tag to prevent messing up whole page ?></div>

							<?php endif; ?>

						<?php endif; ?>

						<?php if ( $instance['description'] ) : // description provided ?>

							<?php if ( $click_url ) : // slide is linked ?>

								<a href="<?php echo do_shortcode( $click_url ); ?>" class="exodus-slide-description"<?php if ( $instance['click_new'] ) : ?> target="_blank"<?php endif; ?>>
									<?php echo force_balance_tags( $instance['description'] ); // auto-close <b> tag to prevent messing up whole page ?>
								</a>

							<?php else : // slide not linked ?>

								<div class="exodus-slide-description"><?php echo force_balance_tags( $instance['description'] ); // auto-close <b> tag to prevent messing up whole page ?></div>

							<?php endif; ?>

						<?php endif; ?>

					</div>

				</div>

			</div>

		<?php endif; ?>

	</li>

<?php

endif;