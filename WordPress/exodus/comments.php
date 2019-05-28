<?php
/**
 * List Comments and Form
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Show comments only on single posts and pages
if ( ! is_singular() || exodus_loop_after_content_used() ) {
	return;
}

// If comments are closed and none have been made, hide the whole comment section
if ( ! have_comments() && ! comments_open() ) {
	return;
}

?>

<section id="comments" class="exodus-content-block"><?php // #comments is hardcoded in WP core comments_popup_link(), so no exodus- prefix ?>

	<?php
	// Show message if post is password protected
	if ( post_password_required() ) :
	?>

		<h1 id="exodus-comments-title" class="exodus-main-title">
			<?php _ex( 'Comments', 'password protected', 'exodus' ); ?>
		</h1>

		<p>
			<?php _e( 'Enter the password above to view any comments.', 'exodus' ); ?>
		</p>

	<?php
	// Show comments if not password protected
	else :
	?>

		<h1 id="exodus-comments-title" class="exodus-main-title">
			<?php
			printf(
				_n( 'One Comment', '%1$s Comments', get_comments_number(), 'exodus' ), // title for 1 comment, title for 2+ comments
				number_format_i18n( get_comments_number() )
			);
			?>
		</h1>

		<?php
		// List comments
		if ( have_comments() ) :
		?>

			<ol class="exodus-comments">
				<?php
				wp_list_comments( array(
					'callback' => 'ctfw_comment' // framework function that loads comment.php for each comment
				) );
				?>
			</ol>

			<?php
			// Comment navigation
			if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) :
			?>
				<nav class="exodus-nav-left-right exodus-clearfix" id="exodus-comment-nav">
					<div class="exodus-nav-left"><?php previous_comments_link( sprintf( __( ' %s Older Comments', 'exodus' ), '<span class="exodus-button-icon ' . exodus_get_icon_class( 'nav-left' ) . '"></span>' ) ); ?></div>
					<div class="exodus-nav-right"><?php next_comments_link( sprintf( __( 'Newer Comments %s', 'exodus' ), '<span class="exodus-button-icon ' . exodus_get_icon_class( 'nav-right' ) . '"></span>' ) ); ?></div>
				</nav>
			<?php endif; ?>

		<?php endif; ?>

		<?php
		// Comments open
		if ( comments_open() ) : // show if comments not closed
		?>

			<?php
			// Show form
			comment_form( array(
				'title_reply'			=> _x( 'Add a Comment', 'comment form', 'exodus' ),
				'title_reply_to'		=> __( 'Add a Reply to %s', 'exodus' ),
				'cancel_reply_link'		=> _x( 'Cancel', 'comment form', 'exodus' ),
				'label_submit'			=> _x( 'Add Comment', 'comment form', 'exodus' )
			) );
			?>

		<?php
		// Comments closed
		else :
		?>

		<p id="exodus-comments-closed">
			<?php _e( 'Commenting has been turned off.', 'exodus' ); // Show message if comments closed ?>
		</p>

		<?php endif; ?>

	<?php endif; ?>

</section>
