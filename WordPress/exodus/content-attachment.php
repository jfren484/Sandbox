<?php
/**
 * Attachment content for images (gallery) and other files.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-full exodus-attachment-full' ); ?>>

	<?php get_template_part( 'content-attachment-header' ); ?>

	<div class="exodus-entry-attachment">

		<?php
		// Image is displayed
		if ( wp_attachment_is_image() ) :
		?>

			<div class="wp-caption aligncenter">

				<?php echo wp_get_attachment_image( $post->ID, 'large' ); ?>

				<?php if ( ctfw_has_manual_excerpt() ) : ?>
					<p class="wp-caption-text">
						<?php echo wptexturize( get_the_excerpt() ); ?>
					</p>
				<?php endif; ?>

			</div>

		<?php
		// Other files are represented by download link
		// (typically non-image file attachment pages are never linked to)
		else :
		?>

			<a href="<?php echo esc_url( ctfw_force_download_url( wp_get_attachment_url( $post->ID ) ) ); ?>" class="exodus-button exodus-attachment-download">
				<span class="exodus-button-icon <?php exodus_icon_class( 'download' ); ?>"></span>
				<?php
				$filetype = wp_check_filetype( wp_get_attachment_url( $post->ID ) );
				if ( $filetype['ext'] ) {
					/* translators: %s is file extension */
					printf( __( 'Download %s', 'exodus' ), strtoupper( $filetype['ext'] ) );
				}
				?>
			</a>

		<?php endif; ?>

	</div>

	<?php if ( ctfw_has_content() ) : ?>
	<div class="exodus-entry-content exodus-clearfix">

		<?php the_content(); ?>

		<?php do_action( 'exodus_after_content' ); ?>

	</div>
	<?php endif; ?>

	<?php get_template_part( 'content-footer-full' ); // multipage nav, term lists, "Edit" button, etc. ?>

</article>