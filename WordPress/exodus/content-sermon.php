<?php
/**
 * Sermon content for:
 *
 * 1. Full / Single
 * 2. Short / Multiple
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get sermon data:
// $has_full_text			True if full text of sermon was provided as post content
// $has_download   			Has at least one downloadable file (audio, video or PDF)
// $video_player			Embed code generated from uploaded file, URL for file on other site, page on oEmbed-supported site such as YouTube, or manual embed code (HTML or shortcode)
// $video_download_url 		URL to file with extension (ie. not YouTube). If local, URL changed to force "Save As" via headers.
// $video_extension			File extension for local file (e.g. mp3)
// $video_size				File size for local file (e.g. 10 MB, 980 kB, 2 GB)
// $audio_player			Same as video
// $audio_download_url 		Same as video
// $audio_extension			File extension for local file (e.g. mp3)
// $audio_size				File size for local file (e.g. 10 MB, 980 kB, 2 GB)
// $pdf_download_url 		Same as audio/video
// $pdf_size				File size for local file (e.g. 10 MB, 980 kB, 2 GB)
extract( ctfw_sermon_data() );

// Show buttons if need to switch between video and audio players or have at least one download link
$show_buttons = false;
if ( ( $video_player && $audio_player ) || $video_download_url || $audio_download_url || $pdf_download_url ) {
	$show_buttons = true;
}

/*************************************
 * 1. FULL / SINGLE
 *************************************/

if ( is_singular( get_post_type() ) ) :

	// Player request (?player=audio or ?player=video)
	// Optionally show and scroll to a specific player
	$player_request = '';
	if (
		isset( $_GET['player'] ) // query string is requesting a specific player
		&& (
			( 'video' == $_GET['player'] && $video_player )		// request is for video player and video player exists
			|| ( 'audio' == $_GET['player'] && $audio_player )	// request is for audio player and audio player exists
		)
	) {
		$player_request = $_GET['player'];
	}

	// Determine which player to show
	$show_player = '';
	if ( $player_request ) {
		$show_player = $player_request;
	} elseif ( $video_player ) {
		$show_player = 'video';
	} elseif ( $audio_player ) {
		$show_player = 'audio';
	}

	// Scroll to player requested, if any
	if ( $player_request ) {

		add_action( 'wp_footer', 'exodus_sermon_player_scroll' );

		function exodus_sermon_player_scroll() {

echo <<< HTML
<script>
jQuery(document).ready(function($) {
	$.smoothScroll({
		scrollTarget: '#exodus-sermon-full-media',
		offset: -60,
		easing: 'swing',
		speed: 800
	});
});
</script>
HTML;

		}

	}

?>

	<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-full exodus-sermon-full' ); ?>>

		<?php get_template_part( 'content-sermon-header' ); ?>

		<?php
		// Show media player and buttons only if post is not password protected
		if ( ( $show_player || $show_buttons ) && ! post_password_required() ) :
		?>

			<div id="exodus-sermon-full-media">

				<?php
				// Show player if have video or audio player
				if ( $show_player ) : ?>

					<div id="exodus-sermon-full-player">

						<?php if ( 'video' == $show_player ) : ?>
						<div id="exodus-sermon-full-video-player">
							<?php echo $video_player; ?>
						</div>
						<?php endif; ?>

						<?php if ( 'audio' == $show_player ) : ?>
						<div id="exodus-sermon-full-audio-player">
							<?php echo $audio_player ?>
						</div>
						<?php endif; ?>

					</div>

				<?php endif; ?>

				<?php
				// Show buttons if need to switch between video and audio players or have at least one download link
				if ( $show_buttons ) :
				?>

					<ul id="exodus-sermon-full-buttons" class="exodus-list-buttons">

						<?php

						// Make sure there is no whitespace between items since they are inline-block

						if ( $video_player && 'audio' == $show_player ) : // have video player but currently showing audio
							?><li id="exodus-sermon-full-video-player-button">
								<a href="<?php echo esc_url( add_query_arg( 'player', 'video' ) ); ?>">
									<span class="exodus-button-icon <?php exodus_icon_class( 'video-play' ); ?>"></span>
									<?php _e( 'Show Video Player', 'exodus' ); ?>
								</a>
							</li><?php
						endif;

						if ( $audio_player && 'video' == $show_player ) : // have audio player but currently showing video
							?><li id="exodus-sermon-full-audio-player-button">
								<a href="<?php echo esc_url( add_query_arg( 'player', 'audio' ) ); ?>">
									<span class="exodus-button-icon <?php exodus_icon_class( 'audio-play' ); ?>"></span>
									<?php _e( 'Show Audio Player', 'exodus' ); ?>
								</a>
							</li><?php
						endif;

						if ( $video_download_url ) :
							?><li id="exodus-sermon-full-video-download-button">
								<a href="<?php echo esc_url( $video_download_url ); ?>" title="<?php echo esc_attr( __( 'Download Video', 'exodus' ) ); ?>" download>
									<span class="exodus-button-icon <?php exodus_icon_class( 'video-download' ); ?>"></span>
									<?php _e( 'Save Video', 'exodus' ); ?>
								</a>
							</li><?php
						endif;

						if ( $audio_download_url ) :
							?><li id="exodus-sermon-full-audio-download-button">
								<a href="<?php echo esc_url( $audio_download_url ); ?>" title="<?php echo esc_attr( __( 'Download Audio', 'exodus' ) ); ?>" download>
									<span class="exodus-button-icon <?php exodus_icon_class( 'audio-download' ); ?>"></span>
									<?php _e( 'Save Audio', 'exodus' ); ?>
								</a>
							</li><?php
						endif;

						if ( $pdf_download_url ) :
							?><li id="exodus-sermon-full-pdf-download-button">
								<a href="<?php echo esc_url( $pdf_download_url ); ?>" title="<?php echo esc_attr( __( 'Download PDF', 'exodus' ) ); ?>" download>
									<span class="exodus-button-icon <?php exodus_icon_class( 'pdf-download' ); ?>"></span>
									<?php _e( 'Save PDF', 'exodus' ); ?>
								</a
							></li><?php
						endif;

						?>

					</ul>

				<?php endif; ?>

			</div>

		<?php endif; ?>

		<?php if ( ctfw_has_content() || ctfw_has_excerpt() ) : ?>

			<div class="exodus-entry-content exodus-clearfix">

				<?php the_content(); ?>

				<?php do_action( 'exodus_after_content' ); ?>

			</div>

		<?php endif; ?>

		<?php get_template_part( 'content-footer-full' ); // multipage nav, term lists, "Edit" button, etc. ?>

	</article>

<?php

/*************************************
 * 2. SHORT / MULTIPLE
 *************************************/

else :

?>

	<article id="post-<?php the_ID(); ?>" <?php post_class( 'exodus-entry-short exodus-sermon-short' ); ?>>

		<?php get_template_part( 'content-sermon-header' ); ?>

		<?php if ( ctfw_has_excerpt() || ctfw_has_more_tag() ) : ?>
			<div class="exodus-entry-content exodus-clearfix">
				<?php exodus_short_content(); // output excerpt or post content up until <!--more--> quicktag used ?>
			</div>
		<?php endif; ?>

		<?php get_template_part( 'content-footer-short' ); // show appropriate button(s) ?>

	</article>

<?php endif; ?>