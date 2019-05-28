<?php
/**
 * Header Right Content
 *
 * This is loaded by header.php.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

global $post;

// Which content to show
$header_right = ctfw_customization( 'header_right' );

?>

<div id="exodus-logo-bar-right">

	<div id="exodus-logo-bar-right-inner">

		<div id="exodus-logo-bar-right-content">

			<?php

			// Tagline on right
			if ( 'tagline' == $header_right ) :

			?>

				<div id="exodus-logo-bar-right-tagline" class="exodus-tagline">
					<?php bloginfo( 'description' ); ?>
				</div>

			<?php

			// Custom Content
			elseif ( 'content' == $header_right ) :

			?>

				<div id="exodus-logo-bar-custom-content">
					<?php echo nl2br( wptexturize( do_shortcode( ctfw_customization( 'header_right_content' ) ) ) ); ?>
				</div>

			<?php endif; ?>

		</div>

	</div>

</div>