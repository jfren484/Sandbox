<?php
/**
 * Post Header Meta (Full and Short)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Get data
// $position, $phone, $email, $urls
extract( ctfw_person_data() );

?>

<header class="exodus-entry-header exodus-clearfix">

	<?php if ( has_post_thumbnail() ) : ?>
		<div class="exodus-entry-image">
			<?php exodus_post_image(); ?>
		</div>
	<?php endif; ?>

	<div class="exodus-entry-title-meta">

		<?php if ( ctfw_has_title() ) : ?>
			<h1 class="exodus-entry-title<?php if ( is_singular( get_post_type() ) ) : ?> exodus-main-title<?php endif; ?>">
				<?php exodus_post_title(); // will be linked on short ?>
			</h1>
		<?php endif; ?>

		<?php if ( $position || $phone || $email || $urls) : ?>

			<ul class="exodus-entry-meta">

				<?php if ( $position ) : ?>
					<li class="exodus-person-position exodus-content-icon">
						<span class="<?php exodus_icon_class( 'person-position' ); ?>"></span>
						<?php echo esc_html( $position ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $phone ) : ?>
					<li class="exodus-person-phone exodus-content-icon">
						<span class="<?php exodus_icon_class( 'person-phone' ); ?>"></span>
						<?php echo esc_html( $phone ); ?>
					</li>
				<?php endif; ?>

				<?php if ( $email ) : ?>
					<li class="exodus-person-email exodus-content-icon">
						<span class="<?php exodus_icon_class( 'person-email' ); ?>"></span>
						<a href="mailto:<?php echo antispambot( $email, true ); ?>">
							<?php echo antispambot( $email ); // this on own line or validation can fail ?>
						</a>
					</li>
				<?php endif; ?>

				<?php if ( $urls ) : ?>
					<li class="exodus-entry-icons exodus-person-icons">
						<?php exodus_social_icons( $urls ); ?>
					</li>
				<?php endif; ?>

			</ul>

		<?php endif; ?>

	</div>

</header>
