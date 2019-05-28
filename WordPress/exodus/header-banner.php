<?php
/**
 * Header Banner
 *
 * Outputs an image overlayed by a title of the current section based on content type.
 * Pages can use the "Banner" meta box to control how and where this is shown.
 *
 * This is loaded by header.php.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get banner data
$banner = exodus_banner_data();

?>

<?php if ( $banner['page'] ) : // banner page found ?>

	<?php

	// Get banner image URL
	$banner_src = wp_get_attachment_image_src( get_post_thumbnail_id( $banner['page']->ID ), 'exodus-banner' );
	$banner_url = ! empty( $banner_src[0] ) ? $banner_src[0] : false;

	// Have URL
	if ( $banner_url ) :
	?>

		<div id="exodus-banner" style="background-image: url(<?php echo esc_attr( $banner_url ); ?>);">

			<div id="exodus-banner-inner" class="exodus-centered-content">

				<?php if ( ! $banner['no_text'] ) : // exodus-banner-inner is required for image to show even if no title showing ?>

					<h1>
						<a href="<?php echo esc_url( get_permalink( $banner['page']->ID ) ); ?>" title="<?php echo esc_attr( get_the_title( $banner['page']->ID ) ); ?>">
							<?php echo esc_html( $banner['page']->post_title ); ?>
						</a>
					</h1>

				<?php endif; ?>

			</div>

		</div>

	<?php endif; ?>

<?php endif; ?>