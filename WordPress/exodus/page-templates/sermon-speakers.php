<?php
/**
 * Template Name: Sermon Speakers
 *
 * This shows a page with sermon speakers.
 *
 * content.php outputs the page content.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Prepare sermon speakers to output after page content
function exodus_sermon_speakers_after_content() {

	// Get speakers
	$speakers = wp_list_categories( array(
		'taxonomy' => 'ctc_sermon_speaker',
		'hierarchical' => false,
		'show_count' => true,
		'title_li' => '',
		'echo' => false,
	) );

	?>

	<div id="exodus-sermon-speakers" class="exodus-sermon-index<?php if ( ctfw_has_content() ) : ?> exodus-sermon-index-has-content<?php endif; ?>">

		<?php
		// Buttons for switching between indexes
		get_template_part( 'sermon-index-header' );
		?>

		<?php if ( $speakers ) : ?>

			<ul id="exodus-sermon-speakers-list" class="exodus-list exodus-sermon-index-list exodus-sermon-index-list-three-columns">
				<?php echo $speakers; ?>
			</ul>

		<?php else : ?>

			<p id="exodus-sermon-index-none">
				<?php _e( 'There are no speakers to show.', 'exodus' ); ?>
			</p>

		<?php endif; ?>

	</div>

	<?php

}

// Insert content after the_content() in content.php
add_action( 'exodus_after_content', 'exodus_sermon_speakers_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );