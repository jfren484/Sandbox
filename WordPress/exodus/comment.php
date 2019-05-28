<?php
/**
 * Comment Template
 *
 * This renders each single coment.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get post
$post = get_post();

// Is this the post author? (blog posts only)
$is_post_author = false;
if ( $comment->user_id === $post->post_author && 'post' == get_post_type() ) {
	$is_post_author = true;
}

// Is this a trackback/pingback?
$is_trackback = false;
if ( in_array( $comment->comment_type, array( 'trackback', 'pingback' ) ) ) {
	$is_trackback = true;
}

?>

<li id="li-comment-<?php comment_ID(); ?>" <?php comment_class( 'exodus-comment' ); ?>>

	<article id="comment-<?php comment_ID(); ?>">

		<div class="exodus-comment-meta">

			<?php
			$avatar_img = get_avatar( $comment, 120 ); // double what's in CSS for Retina
			if ( $avatar_img ) :
			?>
				<div class="exodus-comment-avatar">
					<?php echo $avatar_img; ?>
				</div>
			<?php endif; ?>

			<div class="exodus-comment-buttons">

				<?php
				if ( ! $is_trackback ) { // no reply button for trackbacks/pingbacks
					comment_reply_link( array_merge( $args, array(
						'reply_text' => sprintf( __( '%s Reply', 'exodus' ), '<span class="exodus-button-icon ' . exodus_get_icon_class( 'comment-reply' ) . '"></span>' ),
						'login_text' => __( 'Log in to Reply', 'exodus' ),
						'depth' => $depth,
						'max_depth' => $args['max_depth']
					) ) );
				}
				?>

				<?php edit_comment_link( sprintf( _x( '%s Edit', 'comment', 'exodus' ), '<span class="exodus-button-icon ' . exodus_get_icon_class( 'comment-edit' ) . '"></span>' ) ); ?>

			</div>

			<div class="<?php echo ( $is_trackback ? 'exodus-comment-trackback-link' : 'exodus-comment-author' ); // use appopriate class for type of comment or trackback/pingback ?> ">

				<?php comment_author_link(); ?>

				<?php if ( $is_post_author || $is_trackback ) : // post author or trackback ?>
					<span>
						<?php

						// "Author" after name if post author
						if ( $is_post_author ) {
							_ex( '(Author)', 'comments', 'exodus' );
						}

						// "Trackback" or "Pingback" after link
						elseif ( $is_trackback ) {
							if ( 'trackback' == $comment->comment_type ) {
								_e( '(Trackback)', 'exodus' );
							} elseif ( 'pingback' == $comment->comment_type ) {
								_e( '(Pingback)', 'exodus' );
							}
						}

						?>
					</span>
				<?php endif; ?>

			</div>

			<?php
			/* translators: %3$s is date and %4$s is time for comments */
			printf( '<a href="%1$s"><time datetime="%2$s">' . _x( '%3$s <span class="exodus-comment-time">at %4$s</span>', 'comments', 'exodus' ) . '</time></a>',
				esc_url( get_comment_link( $comment->comment_ID ) ), // comment link
				get_comment_time( 'c' ), // datetime attribute
				get_comment_date(), // human friendly date
				get_comment_time() // human friendly time
			);
			?>

		</div>

		<div class="exodus-comment-content exodus-entry-content">

			<?php if ( '0' == $comment->comment_approved ) : ?>
				<p class="exodus-comment-moderation"><?php _e( 'Your comment is awaiting moderation.', 'exodus' ); ?></p>
			<?php endif; ?>

			<?php comment_text(); ?>

		</div>

	</article>

<?php

// </li> is auto-closed
