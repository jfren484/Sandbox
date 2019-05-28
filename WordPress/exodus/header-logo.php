<?php
/**
 * Header Logo
 *
 * This is loaded by header.php.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

global $post;

?>

<div id="exodus-logo">

	<div id="exodus-logo-content">

		<?php

		// Text Logo
		if ( 'text' == ctfw_customization( 'logo_type' ) || ! ctfw_customization( 'logo_image' ) ) : // or no logo image specified

		?>

			<div id="exodus-logo-text" class="exodus-logo-text-<?php echo esc_attr( ctfw_customization( 'logo_text_size' ) ); ?>">
				<div id="exodus-logo-text-inner">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
						<?php echo nl2br( esc_html( wptexturize( strip_tags( ctfw_customization( 'logo_text' ) ) ) ) ); ?>
					</a>
				</div>
			</div>

		<?php

		// Image Logo
		else :

		?>

			<?php

			// Get logo URL(s)
			$logo_url = ctfw_customization( 'logo_image' ); // uploaded logo
			$logo_hidpi_url = ctfw_customization( 'logo_hidpi' ); // Retina version, if uploaded

			?>

			<div id="exodus-logo-image"<?php if ( $logo_hidpi_url ) : ?> class="exodus-has-hidpi-logo"<?php endif; // tell stylesheet Retina logo exists ?>>

				<a href="<?php echo esc_url( home_url( '/' ) ); ?>">

					<img src="<?php echo esc_url( $logo_url ); ?>" alt="<?php echo esc_attr( get_bloginfo( 'name' ) ); ?>" id="exodus-logo-regular">

					<?php if ( $logo_hidpi_url ) : // Retina logo is optional ?>
						<img src="<?php echo esc_url( $logo_hidpi_url ); ?>" alt="<?php echo esc_attr( get_bloginfo( 'name' ) ); ?>" id="exodus-logo-hidpi">
					<?php endif; ?>

				</a>

			</div>

		<?php endif; ?>

		<?php

		// Tagline under logo
		// Always output markup so when tagline on right is hidden this can be shown instead
		if ( get_bloginfo( 'description' ) ) :

		?>

			<div id="exodus-logo-tagline" class="exodus-tagline">
				<?php bloginfo( 'description' ); ?>
			</div>

		<?php endif; ?>

	</div>

</div>
