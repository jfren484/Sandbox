<?php
/**
 * Load the appropriate sidebar for content being shown.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Show if exists, has widgets and is not disabled via post/page Layout Options
if ( exodus_sidebar_enabled() ) : ?>

	<div id="exodus-sidebar-right" role="complementary">

		<?php do_action( 'exodus_before_sidebar_widgets' ); ?>

		<?php dynamic_sidebar( exodus_sidebar_id() ); ?>

		<?php do_action( 'exodus_after_sidebar_widgets' ); ?>

	</div>

<?php endif; ?>