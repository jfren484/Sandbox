<?php
/**
 * Theme Header
 *
 * Outputs <head> and header content (logo, tagline, navigation).
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?><!DOCTYPE html>
<html class="no-js exodus-html" <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<?php wp_head(); // prints out JavaScript, CSS, etc. as needed by WordPress, theme, plugins, etc. ?>
</head>
<body <?php body_class(); ?>>

<div id="exodus-container">

	<header id="exodus-header">

		<?php get_template_part( 'header-top-bar' ); ?>

		<div id="exodus-logo-bar" class="exodus-centered-content">

			<div id="exodus-logo-bar-content">

				<?php get_template_part( 'header-logo' ); ?>

				<?php get_template_part( 'header-right' ); ?>

			</div>

		</div>

		<nav id="exodus-header-menu" class="exodus-clearfix">

			<div id="exodus-header-menu-inner" class="exodus-centered-content exodus-clearfix">

				<?php
				wp_nav_menu( array(
					'theme_location'	=> 'header',
					'menu_id'			=> 'exodus-header-menu-content',
					'menu_class'		=> 'sf-menu',
					'container'			=> false, // don't wrap in div
					'fallback_cb'		=> false, // don't show pages if no menu found - show nothing
					//'walker'			=> new CTFW_Walker_Nav_Menu_Description

				) );
				?>

				<?php exodus_social_icons( ctfw_customization( 'header_icon_urls' ) ); ?>

			</div>

		</nav>

		<?php get_sidebar( 'home-slider' ); // will show on homepage if has slides ?>

		<?php get_template_part( 'header-banner' ); // header-banner.php ?>

		<?php exodus_breadcrumbs( 'content' ); // will not show on homepage ?>

	</header>

	<div id="exodus-middle">

		<div id="exodus-middle-content" class="exodus-centered-content exodus-clearfix">
