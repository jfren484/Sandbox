<?php
/**
 * Homepage Highlights Widget Area
 *
 * Intended for use with the CT Highlight widget.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?>

<?php if ( is_active_sidebar( 'ctcom-home-highlights' ) ) : ?>

	<div id="ctcom-home-highlights" class="exodus-clearfix">

		<div id="ctcom-home-highlights-inner">

			<?php dynamic_sidebar( 'ctcom-home-highlights' ); ?>

		</div>

	</div>

<?php endif; ?>