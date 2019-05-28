<?php
/**
 * Template Name: Sermon Series
 *
 * This shows a page with sermon series.
 *
 * content.php outputs the page content.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Prepare sermon series to output after page content
function exodus_sermon_series_after_content() {

	// Get series, ordered by date of latest sermon
	$series = ctfw_content_type_archives( array(
		'specific_archive' => 'ctc_sermon_series',
	) );

	// Organize series by year
	$series_by_year = array();
	if ( ! empty( $series['items'] ) ) {

		foreach ( $series['items'] as $series_data ) {
			$year = date_i18n( 'Y', $series_data->sermon_latest_date );
			$series_by_year[$year][$series_data->term_id] = $series_data;
		}

	}

	// Date Format
	$date_format = get_option( 'date_format' );

	// Sermon wording.
	$sermon_word_singular = ctfw_sermon_word_singular();
	$sermon_word_plural = ctfw_sermon_word_plural();

	?>

	<div id="exodus-sermon-series" class="exodus-sermon-index<?php if ( ctfw_has_content() ) : ?> exodus-sermon-index-has-content<?php endif; ?>">

		<?php
		// Buttons for switching between indexes
		get_template_part( 'sermon-index-header' );
		?>

		<?php if ( $series_by_year ) : ?>

			<div id="exodus-sermon-series-list" class="exodus-clearfix">

				<?php foreach ( $series_by_year as $year => $series ) : ?>

					<h2><?php echo $year; ?></h2>

					<ul class="exodus-clearfix">

						<?php foreach ( $series as $series_data ) : ?>

							<li>

								<a href="<?php echo esc_url( $series_data->url ); ?>"><?php echo esc_html( $series_data->name ); ?></a><br>

								<div class="exodus-sermon-series-dates">

									<?php

									// TO DO: Turn compact date range into function in framework; use here and on events

									// Date Range
									if ( $series_data->sermon_earliest_date != $series_data->sermon_latest_date ) :

										// Date formats
										// Make compact range of "June 1 - 5, 2015 if using "F j, Y" format (month and year removed from earliest date as not to be redundant)
										// If year is same but month different, becomes "June 30 - July 1, 2015"
										$earliest_date_format = $date_format;
										$latest_date_format = $date_format;
										if ( 'F j, Y' == $date_format && date_i18n( 'Y', $series_data->sermon_earliest_date ) == date_i18n( 'Y', $series_data->sermon_latest_date ) ) { // Year on both dates must be same

											// Remove year from earliest date
											$earliest_date_format = 'F j';

											// Months and year is same
											// Remove month from latest date
											if ( date_i18n( 'F', $series_data->sermon_earliest_date ) == date_i18n( 'F', $series_data->sermon_latest_date ) ) {
												$latest_date_format = 'j, Y';
											}

										}

										// Format dates
										$latest_date_formatted = date_i18n( $earliest_date_format, $series_data->sermon_earliest_date );
										$earliest_date_formatted = date_i18n( $latest_date_format, $series_data->sermon_latest_date );

										// Build range
										printf(
											/* translators: %s and %s are earliest and latest dates of a sermon in a series */
											_x( '%s &ndash; %s', 'series date range', 'exodus' ),
											$latest_date_formatted,
											$earliest_date_formatted
										);

									// Single Date
									else :

										echo date_i18n( $date_format, $series_data->sermon_earliest_date );

									endif;

									?>

								</div>

								<div class="exodus-sermon-series-count">

									<?php

									// One sermon.
									if ( 1 === $series_data->count ) {

										printf(
											/* translators: %1$s is number of sermons, %2$s is singular "Sermon" word (translated or changed by settings). Example result: "1 Sermon" */
											_x( '%1$s %2$s', 'sermon count single', 'exodus' ),
											$series_data->count,
											$sermon_word_singular
										);

									}

									// Multiple sermons.
									else {

										printf(
											/* translators: %1$s is number of sermons, %2$s is plural "Sermons" word (translated or changed by settings). Example result: "2 Sermons" */
											_x( '%1$s %2$s', 'sermon count multiple', 'exodus' ),
											$series_data->count,
											$sermon_word_plural
										);

									}

									?>

								</div>

							</li>

						<?php endforeach; ?>

					</ul>

				<?php endforeach; ?>

			</div>

		<?php else : ?>

			<p id="exodus-sermon-index-none">
				<?php _e( 'There are no series to show.', 'exodus' ); ?>
			</p>

		<?php endif; ?>

	</div>

	<?php

}

// Insert content after the_content() in content.php
add_action( 'exodus_after_content', 'exodus_sermon_series_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );