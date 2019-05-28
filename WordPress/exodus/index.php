<?php
/**
 * This is the main template file.
 *
 * All content not using a more specific template comes through this.
 * See content-*.php for different types of content loaded via loop.php.
 *
 * More information: http://codex.wordpress.org/Template_Hierarchy
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

get_header(); // header.php ?>

<div id="exodus-content" class="<?php echo exodus_sidebar_enabled() ? 'exodus-has-sidebar' : 'exodus-no-sidebar'; ?>">

	<div id="exodus-content-inner">

		<div class="exodus-content-block exodus-content-block-close exodus-clearfix">

			<?php
			// loop-header.php shows title, description, etc. for categories, tags, archives, etc. (not used by single posts)
			get_template_part( 'loop-header' );
			?>

			<?php
			// loop.php shows single or multiple posts
			get_template_part( 'loop' );
			?>

		</div>

		<?php
		// loop-author.php shows bio below a blog post
		// (loop-header.php shows the same at top of author archive)
		get_template_part( 'loop-author' );
		?>

		<?php
		// loop-navigation.php shows the appropriate navigation at bottom
		get_template_part( 'loop-navigation' );
		?>

		<?php
		// comments.php lists comments when enabled (single posts only)
		comments_template();
		?>

	</div>

</div>

<?php get_sidebar(); // load sidebar.php to show appropriate sidebar ?>

<?php get_footer(); // footer.php ?>