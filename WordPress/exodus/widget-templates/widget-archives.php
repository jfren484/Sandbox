<?php
/**
 * Archives Widget Template
 *
 * Produces output for appropriate widget class in framework.
 * $this, $instance (sanitized field values) and $args are available.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

global $wp_locale;

// HTML Before
echo $args['before_widget'];

// Title
$title = apply_filters( 'widget_title', $instance['title'] );
if ( ! empty( $title ) ) {
	echo $args['before_title'] . $title . $args['after_title'];
}

// Get archive months for post type
$archives = $this->ctfw_get_archives();

// Output month navigation
if ( $archives ) {

	// Loop months
	$items = '';
	foreach ( $archives as $archive ) {

		// Build URL
		$url = ctfw_post_type_get_month_link( $archive->year, $archive->month, $instance['post_type'] );

		// Format of link text
		/* translators: 1: month name, 2: 4-digit year */
		$text = sprintf( _x('%1$s %2$d', 'archives widget', 'exodus' ), $wp_locale->get_month( $archive->month ), $archive->year );

		// Show count after link?
		$after = '';
		if ( ! empty( $instance['show_count'] ) ) { // show count
			$after = '&nbsp;(' . $archive->posts . ')';
		}

		// Month item
		$format = 'html'; // list link
		if ( ! empty( $instance['show_dropdown'] ) ) {
			$format = 'option'; // dropdown option
		}
		$items .= get_archives_link( $url, $text, $format, '', $after );

	}

	// Show as dropdown
	if ( ! empty( $instance['show_dropdown'] ) ) {
		echo '<form>';
		echo '	<select onchange="document.location.href=this.options[this.selectedIndex].value;">';
		echo '		<option value="">' . _x( 'Select Month', 'archives widget', 'exodus' ) . '</option>';
		echo $items;
		echo '	</select>';
		echo '</form>';
	}

	// Show as list
	else {
		echo '<ul>';
		echo $items;
		echo '</ul>';
	}

}

// HTML After
echo $args['after_widget'];
