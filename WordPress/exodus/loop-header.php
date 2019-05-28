<?php
/**
 * Title and description or other content shown above loop on categories, archives, etc.
 *
 * Hierarchy information: http://codex.wordpress.org/Template_Hierarchy
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Show only on loop multiple
if ( is_singular() ) return;

// Sermon wording.
$sermon_word_singular = ctfw_sermon_word_singular();
$sermon_word_plural = ctfw_sermon_word_plural();

/**************************************
 * BLOG POSTS
 **************************************/

// Show page title and content before loop when static front page used and "Posts page" is specified
// Possibility: Simplify by making this condition cause Blog tempate to load with "Posts page" $post global?
if ( ctfw_is_posts_page() ) : ?>

	<?php if ( ! exodus_hide_page_title() ) : // do not repeat title if already shown via header-banner.php ?>
		<h1 class="exodus-main-title"><?php exodus_title_paged( get_post_field( 'post_title', get_queried_object_id() ) ); ?></h1>
	<?php endif; ?>

	<?php if ( $content = apply_filters( 'the_content', get_post_field( 'post_content', get_queried_object_id() ) ) ) : ?>
		<div class="exodus-entry-content">
			<?php echo $content; ?>
		</div>
	<?php endif; ?>

<?php

/**************************************
 * BLOG TAXONOMIES
 **************************************/

elseif ( is_category() ) : ?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( single_cat_title( '', false ) ); ?></h1>

	<div class="exodus-entry-content">
		<?php echo category_description(); ?>
	</div>

<?php elseif ( is_tag() ) : ?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( sprintf( __( "'%s' Tagged Posts", 'exodus' ), single_tag_title( '', false ) ) ); ?></h1>

<?php

/**************************************
 * CUSTOM TAXONOMY
 **************************************/

elseif ( is_tax() ) : ?>

	<?php

	// Title format depends on taxonomy; default shows taxonomy alone
	$taxonomy = get_query_var( 'taxonomy' );
	$taxonomy_titles = array(
		/* translators: %1$s is "Sermons" (plural, translated or changed by settings), %2$s represents sermon topic */
		'ctc_sermon_topic' 		=> _x( '%1$s on %2$s', 'sermon topic', 'exodus' ),
		/* translators: %1$s is "Sermons" (plural, translated or changed by settings), %2$s represents Bible book */
		'ctc_sermon_book' 		=> _x( '%1$s on %2$s', 'sermon book', 'exodus' ),
		/* translators: %1$s is "Sermons" (plural, translated or changed by settings), %2$s represents sermon speaker name */
		'ctc_sermon_speaker' 	=> _x( '%1$s by %2$s', 'sermon speaker', 'exodus' ),
		/* translators: %1$s is "Sermons" (plural, translated or changed by settings), %2$s represents sermon tag term */
		'ctc_sermon_tag' 		=> _x( '"%2$s" Tagged %1$s', 'sermon tag', 'exodus' ),
	);
	$taxonomy_title = isset( $taxonomy_titles[$taxonomy] ) ? $taxonomy_titles[$taxonomy] : '%2$s';

	// Title with replacements.
	$title = sprintf(
		$taxonomy_title,
		$sermon_word_plural,
		single_term_title( '', false )
	);

	?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( $title ); ?></h1>

	<div class="exodus-entry-content">

		<?php echo term_description( '', get_query_var( 'taxonomy' ) ); ?>

		<?php if ( ! have_posts() ) : ?>

			<?php

			// Get taxonomy label lowercase (e.g. 'event' or 'sermon')
			$taxonomy_obj = get_taxonomy( $taxonomy );
			$post_type = isset( $taxonomy_obj->object_type[0] ) ? $taxonomy_obj->object_type[0] : '';
			$post_type_obj = get_post_type_object( $post_type );
			$taxonomy_label_lc = isset( $post_type_obj->labels->name ) ? strtolower( $post_type_obj->labels->name ) : '';

			?>

			<p class="exodus-no-posts-message">
				<?php printf( __( 'There are no %s to show.', 'exodus' ), $taxonomy_label_lc ); ?>
			</p>

		<?php endif; ?>

	</div>

<?php

/**************************************
 * AUTHOR ARCHIVE
 **************************************/

elseif ( is_author() ) : ?>

	<h1 class="exodus-main-title"><?php echo exodus_title_paged( sprintf( __( "Posts by %s", 'exodus' ), get_the_author() ) ); ?></h1>

	<?php
	// loop-author.php shows bio below blog posts and at top of author archives
	get_template_part( 'loop-author' );
	?>

<?php

/**************************************
 * SEARCH RESULTS
 **************************************/

?>

<?php elseif ( is_search() ) : ?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( sprintf( __( "Search results for '%s'", 'exodus' ), get_search_query() ) ); ?></h1>

	<div class="exodus-entry-content">
		<?php
		/* translators: %d is number of matches, %s is search term */
		echo sprintf( _n( 'There is %d match for %s.', 'There are %d matches for %s.', $wp_query->found_posts, 'exodus' ), $wp_query->found_posts, '<i>' . get_search_query() . '</i>' );
		?>
	</div>

<?php

/**************************************
 * DATE ARCHIVE
 **************************************/

elseif ( is_day() || is_month() || is_year() ) : ?>

	<?php

	// Date format
	if ( is_day() ) {
		$date = get_the_date();
	} else if ( is_month() ) {
		$date = get_the_date( _x( 'F Y', 'monthly archives date format', 'exodus' ) );
	} else if ( is_year() ) {
		$date = get_the_date( _x( 'Y', 'yearly archives date format', 'exodus' ) );
	}

	// Title format depends on post type
	$post_type = get_post_type();
	$archive_titles = array(
		/* translators: %1$s represents date */
		'post'			=> __( 'Posts from %1$s', 'exodus' ),
		/* translators: %2$s is "Sermons" (plural, translated or changed by settings), %1$s represents date. Example "Sermons from 2017" */
		'ctc_sermon'	=> _x( '%2$s from %1$s', 'sermon archive', 'exodus' ),
		);
	$archive_title = isset( $archive_titles[$post_type] ) ? $archive_titles[$post_type] : '%1$s';

	// Title with replacements.
	$title = sprintf(
		$archive_title,
		esc_html( $date ),
		esc_html( $sermon_word_plural )
	);

	?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( $title ); ?></h1>

<?php

/**************************************
 * POST TYPE ARCHIVE
 **************************************/

// When page template not used to output post type items, post type name shown at top

elseif ( is_post_type_archive() ) : ?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( post_type_archive_title( '', false ) ); ?></h1>

<?php

/**************************************
 * GENERIC ARCHIVE
 **************************************/

// This is used when nothing higher up is suitable

elseif ( is_archive() ) : ?>

	<h1 class="exodus-main-title"><?php exodus_title_paged( __( 'Archives', 'exodus' ) ); ?></h1>

<?php

elseif ( is_404() ) : ?>

	<h1 class="exodus-main-title"><?php _e( 'Not Found', 'exodus' ); ?></h1>

	<div class="exodus-entry-content">
		<?php _e( 'Sorry, the page or file you tried to access was not found.', 'exodus' ); ?>
	</div>

<?php endif; ?>
