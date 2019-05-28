<?php
/**
 * Sermon Index Header
 *
 * Buttons for switching between sermon indexes, if available (Topics, Series, Books, etc.)
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Sermon Archive Data
$archives = ctfw_content_type_archives();

// Archive Meta
$archives_meta = array(
	'ctc_sermon_topic' => array(
		'page_template'	=> 'sermon-topics.php',
		'icon'			=> 'sermon-topic',
	),
	'ctc_sermon_series' => array(
		'page_template'	=> 'sermon-series.php',
		'icon'			=> 'sermon-series',
	),
	'ctc_sermon_book' => array(
		'page_template'	=> 'sermon-books.php',
		'icon'			=> 'sermon-book',
	),
	'ctc_sermon_speaker' => array(
		'page_template'	=> 'sermon-speakers.php',
		'icon'			=> 'sermon-speaker',
	),
	'months' => array(
		'page_template'	=> 'sermon-dates.php',
		'icon'			=> 'sermon-date',
		'name'			=> _x( 'Dates', 'sermon archives', 'exodus' ), // override
	),
);

// Build Buttons
$buttons = array();
foreach ( $archives as $archive_key => $archive ) {

	// Get page template and icon
	$archive_meta = $archives_meta[$archive_key];

	// Does page with proper template exist?
	$url = ctfw_get_page_url_by_template( $archive_meta['page_template'] );
	if ( ! $url ) {
		continue;
	}

	// Is there at least one tax term to show?
	if ( empty( $archive['items']) ) {
		continue;
	}

	// Prepare button
	$buttons[$archive_key] = array(
		'text'		=> isset( $archive_meta['name'] ) ? $archive_meta['name'] : $archive['name'],
		'icon'		=> $archive_meta['icon'],
		'url'		=> $url,
		'selected'	=> is_page_template( CTFW_THEME_PAGE_TPL_DIR . '/' . $archive_meta['page_template'] ),
	);

}

// Have more than one button to show?
if ( count( $buttons ) < 2 ) {
	return;
}

?>

<div id="exodus-sermon-index-header">

	<ul class="exodus-list-buttons">

		<?php

		// Loop buttons
		// Make sure there is no whitespace between items since they are inline-block
		foreach ( $buttons as $button ) :

			?><li>
				<a href="<?php echo esc_url( $button['url'] ); ?>"<?php if ( $button['selected'] ) : ?> class="exodus-button-selected"<?php endif; ?>>
					<span class="exodus-button-icon <?php exodus_icon_class( $button['icon'] ); ?>"></span>
					<?php echo esc_html( $button['text'] ); ?>
				</a>
			</li><?php

		endforeach;

		?>

	</ul>

</div>
