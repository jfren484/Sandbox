<?php
/**
 * Template Name: Sermon Topics
 *
 * This shows a page with sermon topics.
 *
 * content.php outputs the page content.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Prepare sermon topics to output after page content
function exodus_sermon_topics_after_content() {

	// Get topics
	$topics = wp_list_categories( array(
		'taxonomy' => 'ctc_sermon_topic',
		'show_count' => true,
		'title_li' => '',
		'echo' => false,
	) );

	?>

	<div id="exodus-sermon-topics" class="exodus-sermon-index<?php if ( ctfw_has_content() ) : ?> exodus-sermon-index-has-content<?php endif; ?>">

		<?php
		// Buttons for switching between indexes
		get_template_part( 'sermon-index-header' );
		?>

		<?php if ( $topics ) : ?>

			<ul id="exodus-sermon-topics-list" class="exodus-list exodus-sermon-index-list exodus-sermon-index-list-three-columns">
				<?php echo $topics; ?>
			</ul>

		<?php else : ?>

			<p id="exodus-sermon-index-none">
				<?php _e( 'There are no topics to show.', 'exodus' ); ?>
			</p>

		<?php endif; ?>

	</div>

	<?php

}

// Insert content after the_content() in content.php
add_action( 'exodus_after_content', 'exodus_sermon_topics_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );