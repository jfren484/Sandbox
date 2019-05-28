<?php
/**
 * Home Bottom Right Widget Area
 *
 * This shows widgets in a right-hand bottom at the bottom of the homepage
 */
?>

<?php if ( is_active_sidebar( 'ctcom-home-bottom-right' ) ) : ?>

<div id="exodus-home-bottom-widgets-right" class="exodus-home-bottom-widgets-column">

	<?php dynamic_sidebar( 'ctcom-home-bottom-right' ); ?>

</div>

<?php endif; ?>