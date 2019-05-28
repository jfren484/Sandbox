<?php
/**
 * Attachment Header Meta (Full and Short)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?>

<header class="exodus-entry-header exodus-clearfix">

	<div class="exodus-entry-title-meta">

		<?php if ( ctfw_has_title() ) : ?>
			<h1 class="exodus-entry-title<?php if ( is_singular( get_post_type() ) ) : ?> exodus-main-title<?php endif; ?>">
				<?php exodus_post_title(); // will be linked on short ?>
			</h1>
		<?php endif; ?>

		<ul class="exodus-entry-meta">

			<li class="exodus-attachment-date">
				<time datetime="<?php esc_attr( the_time( 'c' ) ); ?>"><?php printf( __( 'Uploaded %s', 'exodus' ), '<span>' . ctfw_post_date( array( 'return' => true ) ) . '</span>' ); ?></time>
			</li>

			<?php if ( $post->post_parent ) : ?>
				<li class="exodus-entry-parent exodus-content-icon">
					<span class="<?php exodus_icon_class( 'entry-parent' ); ?>"></span>
					<a href="<?php echo esc_url( get_permalink( $post->post_parent ) ); ?>" title="<?php echo esc_attr( get_the_title( $post->post_parent ) ); ?>"><?php echo get_the_title( $post->post_parent ); ?></a>
				</li>
			<?php endif; ?>

			<?php if ( exodus_show_comments() ) : ?>
				<li class="exodus-entry-comments-link exodus-content-icon">
					<span class="<?php exodus_icon_class( 'comments-link' ); ?>"></span>
					<?php exodus_comments_link(); ?>
				</li>
			<?php endif; ?>

		</ul>

	</div>

</header>
