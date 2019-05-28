<?php
/* Template Name: Homepage */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Header
get_header();

// Start loop
while ( have_posts() ) : the_post();

// Check if bottom widget columns are active
$home_bottom_left_active = is_active_sidebar( 'ctcom-home-bottom-left' ) ? true : false;
$home_bottom_right_active = is_active_sidebar( 'ctcom-home-bottom-right' ) ? true : false;

?>

<div id="exodus-home-content"<?php // adding classes to home content container allows layout to be adjusted via stylesheet

	$home_classes = array();

	// Any slides?
	if ( ! is_active_sidebar( 'ctcom-home-slider' )  ) { // no slides used
		$no_slider = true;
		$home_classes[] = 'exodus-no-slider';
	}

	// Any highlights?
	if ( ! is_active_sidebar( 'ctcom-home-highlights' )  ) { // no highlights used
		$no_highlights = true;
		$home_classes[] = 'exodus-no-highlights';
	}

	// Any intro content?
	if ( ! ctfw_has_content() && ! ctfw_has_title() ) { // no home intro used
		$no_intro = true;
		$home_classes[] = 'exodus-no-intro';
	}

	// Has both bottom sidebar columns?
	if ( $home_bottom_left_active && $home_bottom_right_active ) { // both widget columns used
		$home_classes[] = 'exodus-home-bottom-widgets-both';
	}

	// Add classes to content container
	if ( ! empty( $home_classes ) ) { // output class attribute and values
		echo ' class="' . implode( ' ', $home_classes ) . '"';
	}

?>>

	<?php if ( empty( $no_intro ) ) : ?>

		<section id="exodus-intro"<?php if ( get_the_title() ) : ?> class="exodus-intro-has-heading"<?php endif; ?>>

			<?php if ( ctfw_has_title() ) : ?>
			<h1 id="exodus-intro-heading"><?php the_title(); ?></h1>
			<?php endif; ?>

			<?php if ( ctfw_has_content() ) : ?>
			<div id="exodus-intro-content">
				<?php the_content(); ?>
			</div>
			<?php endif; ?>

		</section>

	<?php endif; ?>

	<?php get_sidebar( 'home-highlights' ); ?>

	<?php if ( $home_bottom_left_active || $home_bottom_right_active ) : ?>

		<div id="exodus-home-bottom-widgets" class="exodus-clearfix">

			<?php get_sidebar( 'home-bottom-left' ); ?>

			<?php get_sidebar( 'home-bottom-right' ); ?>

		</div>

	<?php endif; ?>

</div>

<?php

// End loop
endwhile;

// Footer
get_footer();