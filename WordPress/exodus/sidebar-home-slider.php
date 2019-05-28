<?php
/**
 * Homepage Slider Widget Area
 *
 * Intended for use by the CT Slide widget. Outputs slider when homepage template is used.
 * Used in header so can exceed content max-width (like page banners).
 *
 * This is loaded by header.php.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Homepage only
if ( ! is_page_template( CTFW_THEME_PAGE_TPL_DIR . '/homepage.php' ) ) {
	return;
}

?>

<?php if ( is_active_sidebar( 'ctcom-home-slider' ) ) : ?>

	<div id="exodus-slider-container" class="exodus-clearfix">

		<div id="exodus-slider">

			<div id="exodus-slider-inner">

				<div class="flexslider">

					<ul class="slides">

						<?php dynamic_sidebar( 'ctcom-home-slider' ); ?>

					</ul>

				</div>

			</div>

		</div>

	</div>

<?php endif; ?>