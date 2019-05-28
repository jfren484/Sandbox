<?php
/**
 * Home Bottom Left Widget Area
 *
 * This shows widgets in a left-hand bottom at the bottom of the homepage
 */
?>

<?php if ( is_active_sidebar( 'ctcom-home-bottom-left' ) ) : ?>

<div id="exodus-home-bottom-widgets-left" class="exodus-home-bottom-widgets-column">

	<?php dynamic_sidebar( 'ctcom-home-bottom-left' ); ?>

</div>

<?php endif; ?>