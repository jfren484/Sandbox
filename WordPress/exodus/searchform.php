<?php
/**
 * Search form
 *
 * Provides contents of get_search_form() for the search widget
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?>

<div class="exodus-search-form">
	<form method="get" action="<?php echo esc_url( home_url( '/' ) ); ?>">
		<label class="screen-reader-text"><?php _e( 'Search', 'exodus' ); ?></label>
		<div class="exodus-search-field">
			<input type="text" name="s" />
		</div>
		<a href="#" class="exodus-search-button <?php exodus_icon_class( 'search-button' ); ?>"></a>
	</form>
</div>