<?php
/**
 * Post Header Meta (Full and Short)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

?>

<header class="exodus-entry-header exodus-clearfix">

	<?php if ( has_post_thumbnail() ) : ?>
		<div class="exodus-entry-image">
			<?php exodus_post_image(); ?>
		</div>
	<?php endif; ?>

	<div class="exodus-entry-title-meta">

		<?php if ( ctfw_has_title() ) : // might be Status Update with no title ?>
			<h1 class="exodus-entry-title<?php if ( is_singular( get_post_type() ) ) : ?> exodus-main-title<?php endif; ?>">
				<?php exodus_post_title(); // will be linked on short ?>
			</h1>
		<?php endif; ?>

		<ul class="exodus-entry-meta">

			<li class="exodus-entry-date">
				<time datetime="<?php esc_attr( the_time( 'c' ) ); ?>"><?php ctfw_post_date(); ?></time>
			</li>

			<li class="exodus-entry-byline exodus-content-icon">
				<span class="<?php exodus_icon_class( 'entry-byline' ); ?>"></span>
				<a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>"><?php the_author(); ?></a>
			</li>

			<?php if ( $categories = get_the_category_list( __( ', ', 'exodus' ) ) ) : ?>
				<li class="exodus-entry-category exodus-content-icon">
					<span class="<?php exodus_icon_class( 'entry-category' ); ?>"></span>
					<?php echo $categories; ?>
				</li>
			<?php endif; ?>

			<?php if ( exodus_show_comments() ) : ?>
				<li class="exodus-entry-comments-link exodus-content-icon">
					<span class="<?php exodus_icon_class( 'comments-link' ); ?>"></span>
					<?php exodus_comments_link(); ?>
				</li>
			<?php endif; ?>

		</ul>

	</div>

</header>
