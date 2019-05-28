<?php
/**
 * Post Header Meta (Full and Short)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?>

<header class="exodus-entry-header exodus-clearfix">

	<?php if ( has_post_thumbnail() ) : ?>
		<div class="exodus-entry-image">
			<?php exodus_post_image(); ?>
		</div>
	<?php endif; ?>

	<div class="exodus-entry-title-meta">

		<?php if ( ctfw_has_title() ) : ?>
			<h1 class="exodus-entry-title<?php if ( is_singular( get_post_type() ) ) : ?> exodus-main-title<?php endif; ?>">
				<?php exodus_post_title(); // will be linked on short ?>
			</h1>
		<?php endif; ?>

		<ul class="exodus-entry-meta">

			<li class="exodus-entry-date">
				<time datetime="<?php esc_attr( the_time( 'c' ) ); ?>"><?php ctfw_post_date(); ?></time>
			</li>

			<?php if ( $speakers = get_the_term_list( $post->ID, 'ctc_sermon_speaker', '', __( ', ', 'exodus' ) ) ) : ?>
				<li class="exodus-entry-byline exodus-sermon-speaker exodus-content-icon">
					<span class="<?php exodus_icon_class( 'sermon-speaker' ); ?>"></span>
					<?php echo $speakers; ?>
				</li>
			<?php endif; ?>

			<?php if ( $topics = get_the_term_list( $post->ID, 'ctc_sermon_topic', '', __( ', ', 'exodus' ) ) ) : ?>
				<li class="exodus-entry-category exodus-sermon-topic exodus-content-icon">
					<span class="<?php exodus_icon_class( 'sermon-topic' ); ?>"></span>
					<?php echo $topics; ?>
				</li>
			<?php endif; ?>

			<?php if ( $books = get_the_term_list( $post->ID, 'ctc_sermon_book', '', __( ', ', 'exodus' ) ) ) : ?>
				<li class="exodus-entry-category exodus-sermon-book exodus-content-icon">
					<span class="<?php exodus_icon_class( 'sermon-book' ); ?>"></span>
					<?php echo $books; ?>
				</li>
			<?php endif; ?>

			<?php if ( exodus_show_comments() ) : ?>
				<li class="exodus-entry-category exodus-sermon-topic exodus-content-icon">
					<span class="<?php exodus_icon_class( 'comments-link' ); ?>"></span>
					<?php exodus_comments_link(); ?>
				</li>
			<?php endif; ?>

		</ul>

	</div>

</header>
