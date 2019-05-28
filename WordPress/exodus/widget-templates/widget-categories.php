<?php
/**
 * Categories Widget Template
 *
 * Produces output for appropriate widget class in framework.
 * $this, $instance (sanitized field values) and $args are available.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// HTML Before
echo $args['before_widget'];

// Title
$title = apply_filters( 'widget_title', $instance['title'] );
if ( ! empty( $title ) ) {
	echo $args['before_title'] . $title . $args['after_title'];
}

// Current taxonomy
$taxonomy = taxonomy_exists( $instance['taxonomy'] ) ? $instance['taxonomy'] : 'category';

// Base category arguments
$cat_args = array(
	'taxonomy' => $taxonomy,
	'orderby' => $instance['orderby'],
	'order' => $instance['order'],
	'number' => $instance['limit'],
	'show_count' => $instance['show_count'],
	'hierarchical' => $instance['show_hierarchy'],
);
$cat_args = apply_filters( 'exodus_widget_categories_args', $cat_args );

// Show as dropdown
if ( ! empty( $instance['show_dropdown'] ) ) {

	// Add category arguments to base array
	$cat_args['show_option_none'] = _x( 'Select One', 'categories widget', 'exodus' );
	$cat_args['id'] = 'exodus-dropdown-taxonomy_id-' . rand( 10000, 99999 );
	$cat_args['name'] = $cat_args['id'];
	$cat_args['class'] = 'exodus-dropdown-taxonomy-redirect';

	// Show dropdown selector
	?>
	<form>
		<input type="hidden" name="taxonomy" value="<?php echo esc_attr( $taxonomy ); ?>">
		<?php wp_dropdown_categories( $cat_args ); ?>
	</form>
	<?php

}

// Show as list
else {

	// Add category arguments to base array
	$cat_args['taxonomy'] = $taxonomy;
	$cat_args['title_li'] = '';
	$cat_args['show_option_none'] = '';

	// Show category list
	?>
	<ul>
		<?php wp_list_categories( $cat_args ); ?>
	</ul>
	<?php

}

// HTML After
echo $args['after_widget'];
