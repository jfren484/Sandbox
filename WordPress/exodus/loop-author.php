<?php
/**
 * Author Box
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Do not show again at bottom if already shown at top
// This relates to author archives
if ( ! empty( $GLOBALS['exodus_author_box_shown'] ) ) {
	return;
} else {
	$GLOBALS['exodus_author_box_shown'] = true;
}

// Show only on single blog posts and list of author's posts
if ( ! is_singular( 'post' ) && ! is_author() ) return;

// Show only if have profile bio
if ( ! get_the_author_meta( 'description' ) ) return;

?>

<aside class="exodus-content-block exodus-clearfix">

	<div class="exodus-author-box">

		<div class="exodus-author-avatar">
			<?php echo get_avatar( get_the_author_meta( 'user_email' ), 200 ); // 100x100 so 200 for hiDPI/Retina ?>
		</div>

		<div class="exodus-author-content">

			<?php if ( is_singular() && get_the_author_posts() > 1 ) : // not on author archive and has more than this post ?>
				<div class="exodus-author-box-archive">
					<a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>"><?php printf( __( 'More Posts', 'exodus' ), get_the_author() ); ?></a>
				</div>
			<?php endif; ?>

			<h2><?php printf( _x( 'About %s', 'author box', 'exodus' ), get_the_author() ); ?></h2>

			<?php echo wpautop( wptexturize( get_the_author_meta( 'description' ) ) ); ?>

		</div>

	</div>

</aside>
