<?php
/**
 * Sermons Widget Template
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

	// Classes always used
	$classes = array( 'exodus-widget-entry', 'exodus-sermons-widget-entry', 'exodus-clearfix' );

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

				<?php if ( $instance['show_date'] ) : ?>
					<li class="exodus-widget-entry-date exodus-sermons-widget-entry-date">
						<time datetime="<?php esc_attr( the_time( 'c' ) ); ?>"><?php ctfw_post_date(); ?></time>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_speaker'] && $speakers = get_the_term_list( $post->ID, 'ctc_sermon_speaker', '', __( ', ', 'exodus' ) ) ) : ?>
					<li class="exodus-widget-entry-byline exodus-sermons-widget-entry-speakers">
						<?php printf( _x( 'by %s', 'widget', 'exodus' ), $speakers ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_topic'] && $topics = get_the_term_list( $post->ID, 'ctc_sermon_topic', '', __( ', ', 'exodus' ) ) ) : ?>
					<li class="exodus-sermons-widget-entry-topics">
						<?php echo $topics; ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_book'] && $books = get_the_term_list( $post->ID, 'ctc_sermon_book', '', __( ', ', 'exodus' ) ) ) : ?>
					<li class="exodus-sermons-widget-entry-books">
						<?php echo $books; ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_series'] && $series = get_the_term_list( $post->ID, 'ctc_sermon_series', '', __( ', ', 'exodus' ) ) ) : ?>
					<li class="exodus-sermons-widget-entry-series">
						<?php echo $series; ?>
					</li>
				<?php endif; ?>

				<?php if ( $instance['show_media_types'] ) : ?>

					<li class="exodus-widget-entry-icons exodus-sermons-widget-entry-icons">

						<ul class="exodus-list-icons">

							<?php if ( $has_full_text ) : ?>
								<li><a href="<?php the_permalink(); ?>" class="<?php exodus_icon_class( 'read' ); ?>" title="<?php echo esc_attr( _x( 'Read Online', 'sermons widget', 'exodus' ) ); ?>"></a></li>
							<?php endif; ?>

							<?php if ( $video_player || $video_download_url ) : ?>
								<li><a href="<?php echo esc_url( $video_player ? add_query_arg( 'player', 'video', get_permalink() ) : get_permalink() ); ?>" class="<?php exodus_icon_class( 'video-play' ); ?>" title="<?php echo esc_attr( _x( 'Watch Video', 'sermons widget', 'exodus' ) ); ?>"></a></li>
							<?php endif; ?>

							<?php if ( $audio_player || $audio_download_url ) : ?>
								<li><a href="<?php echo esc_url( $audio_player ? add_query_arg( 'player', 'audio', get_permalink() ) : get_permalink() ); ?>" class="<?php exodus_icon_class( 'audio-play' ); ?>" title="<?php echo esc_attr( _x( 'Listen to Audio', 'sermons widget', 'exodus' ) ); ?>"></a></li>
							<?php endif; ?>

							<?php if ( $pdf_download_url ) : ?>
								<li><a href="<?php echo esc_url( $pdf_download_url ); ?>" class="<?php exodus_icon_class( 'pdf-download' ); ?>" title="<?php echo esc_attr( _x( 'Download PDF', 'sermons widget', 'exodus' ) ); ?>" download></a></li>
							<?php endif; ?>

						</ul>

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
		<?php
		echo esc_html( sprintf(
			/* translators: $1$s is "sermons" (lowercase), possibly translated or changed by settings */
			_x( 'There are no %1$s to show.', 'sermons widget', 'exodus' ),
			strtolower( ctfw_sermon_word_plural() )
		) );
		?>
	</div>
	<?php

}

// HTML After
echo $args['after_widget'];
