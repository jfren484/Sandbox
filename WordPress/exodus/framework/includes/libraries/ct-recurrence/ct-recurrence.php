<?php
/**
 * CT Recurrence Class
 *
 * A class utilizing php-rrule to handle recurring event dates in the Church Content
 * plugin and Church Theme Framework.
 *
 * Include ct-recurrence-load.php instead of this to avoid errors on old versions of PHP.
 * See README.md and example usage at bottom of this file for more details.
 *
 * @package   CT_Recurrence
 * @copyright Copyright (c) 2014 - 2017, churchthemes.com
 * @link      https://github.com/churchthemes/ct-recurrence
 * @license   GPLv2 or later
 */

// No direct access.
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

// Prepare for php-rrule.
use RRule\RSet;

/*******************************************
 * RECURRENCE CLASS
 *******************************************/

/**
 * CT Recurrence Class
 *
 * @since 0.9
 */
class CT_Recurrence {

	/**
	 * Version
	 *
	 * @since 0.9
	 * @var string
	 */
	public $version;

	/**
	 * PHP is old
	 *
	 * @since 2.0
	 * @var bool
	 */
	public $php_is_old;

	/**
	 * PHP minimum version required.
	 *
	 * @since 2.0
	 * @var string
	 */
	public $php_min_version;

	/**
	 * Constructor
	 *
	 * @since 0.9
	 * @access public
	 */
	public function __construct() {

		// Version.
		$this->version = '2.0.4';

		// Load php-rrule.
		$this->load_php_rrule();

		// PHP version is okay, because ct-recurrence-load.php loaded ct-recurrence.php.
		// Themes and plugins can check $ct_recurrence->php_is_old to determine if need to show a notice.
		$this->php_is_old = false;
		$this->php_min_version = CTR_PHP_MIN_VERSION;

	}

	/**
	 * Load php-rrule
	 *
	 * Include php-rrule classes.
	 *
	 * @since 0.9
	 * @access public
	 * @param array $args Arguments for recurrence.
	 * @return array|bool $args['args'] and $args['rrule_args'] or false if invalid.
	 */
	public function load_php_rrule() {

		// php-rrule includes to load.
		$includes = array(
			'RfcParser.php',
			'RRuleInterface.php',
			'RSet.php',
			'RRule.php',
		);

		// Load php-rrule includes.
		foreach ( $includes as $include ) {
			require_once dirname( __FILE__ ) . '/php-rrule/' . $include;
		}

	}

	/**
	 * Prepare arguments
	 *
	 * This validates, sets defaults and returns arguments in format suitable for php-rrule.
	 * It also returns the original arguments, sanitized, for debugging purposes.
	 *
	 * It returns false if any of the arugments are invalid.
	 *
	 * @since 0.9
	 * @access public
	 * @param array $args Arguments for recurrence.
	 * @return array|bool $args['args'] and $args['rrule_args'] or false if invalid.
	 */
	public function prepare_args( $args ) {

		// Is it a non-empty array?
		if ( empty( $args ) || ! is_array( $args ) ) { // could be empty array; set bool.
			$args = false;
		}

		// Acceptable arguments.
		$acceptable_args = array(
			'start_date',
			'until_date',
			'frequency',
			'interval',
			'weekly_type',
			'weekly_day',
			'monthly_type',
			'monthly_week',
			'excluded_dates',
			'limit',
		);

		// Loop arguments
		// Sanitize and set all keys.
		$new_args = array();
		foreach ( $acceptable_args as $arg ) {

			// If no key, set it.
			if ( ! empty( $args[ $arg ] ) ) {
				$new_args[ $arg ] = $args[ $arg ];
			} else {
				$new_args[ $arg ] = '';
			}

			// Convert and sanitize.
			if ( ! empty( $new_args[ $arg ] ) ) {

				// If JSON, decode it.
				if ( is_string( $new_args[ $arg ] ) && preg_match( '/^(\[|\{)/', $new_args[ $arg ] ) ) {
					$new_args[ $arg ] = json_decode( $new_args[ $arg ] );
				}

				// If comma, separated list, convert to array.
				if ( is_string( $new_args[ $arg ] ) && preg_match( '/,/', $new_args[ $arg ] ) ) {
					$new_args[ $arg ] = explode( ',', $new_args[ $arg ] );
				}

				// Trim string value.
				if ( is_string( $new_args[ $arg ] ) ) {
					$new_args[ $arg ] = trim( $new_args[ $arg ] );
				}

				// Trim array values.
				if ( is_array( $new_args[ $arg ] ) ) {

					// Trim each value in array.
					foreach ( $new_args[ $arg ] as $key => $value ) {
						$new_args[ $arg ][ $key ] = trim( $value );
					}

				}

			}

		}
		$args = $new_args;

		// Array to collect rrule into.
		$rrule_args = array();

		// Continue until find a bad argument.
		$continue = true;

		// Start Date.
		if ( $continue ) {

			// Date is missing or invalid.
			if ( empty( $args['start_date'] ) || ! $this->validate_date( $args['start_date'] ) ) {
				$continue = false;
			}

			// Date is valid.
			else {

				// Get start date's day of week (used later with rrule).
				$start_date_day_of_week_abbrev = strtoupper( substr( date( 'D', strtotime( $args['start_date'] ) ), 0, 2 ) ); // English, two-letter code.

				// Format for rrule.
				$rrule_args['DTSTART'] = $args['start_date'];

			}

		}

		// Until Date (optional).
		if ( $continue ) {

			// Value is provided.
			if ( ! empty( $args['until_date'] ) ) {

				// Until Date is invalid.
				if ( ! $this->validate_date( $args['until_date'] ) ) {
					$continue = false;
				}

				// Until Date is earlier than start date.
				if ( $continue && ( strtotime( $args['until_date'] ) < strtotime( $args['start_date'] ) ) ) {
					$continue = false;
				}

				// Format for rrule.
				if ( $continue ) {
					$rrule_args['UNTIL'] = $args['until_date'];
				}

			}

		}

		// Frequency.
		if ( $continue ) {

			// Valid frequencies.
			$valid_frequencies = array(
				'weekly',
				'monthly',
				'yearly',
			);

			// Value is invalid.
			if ( empty( $args['frequency'] ) || ! in_array( $args['frequency'], $valid_frequencies, true ) ) {
				$continue = false;
			}

			// Format for rrule.
			else {
				$rrule_args['FREQ'] = strtoupper( $args['frequency'] );
			}

		}

		// Interval.
		// Every X weeks / months / years.
		if ( $continue ) {

			// Default is 1 if nothing given.
			if ( empty( $args['interval'] ) ) {
				$args['interval'] = 1;
			}

			// Invalid if not numeric or is negative.
			if ( ! is_numeric( $args['interval'] ) || $args['interval'] < 1 ) {
				$continue = false;
			}

			// Format for rrule.
			else {
				$rrule_args['INTERVAL'] = $args['interval'];
			}

		}

		// Weekly Type (required when frequency is weekly).
		if ( $continue ) {

			// Value is required.
			if ( 'weekly' === $args['frequency'] ) {

				// Valid weekly types.
				$valid_weekly_types = array(
					'same', // same day of week.
					'day' // specific day(s) of week.
				);

				// Default to 'same' if none.
				// Helps with back-compat since weekly_type and weekly_day did not always exist.
				if ( empty( $args['weekly_type'] ) ) {
					$args['weekly_type'] = 'same';
				}

				// Value is invalid.
				if ( ! in_array( $args['weekly_type'], $valid_weekly_types, true ) ) {
					$continue = false; // value is invalid.
				}

			}

			// Weekly type not required if frequency isn't weekly.
			else {
				$args['weekly_type'] = '';
			}

		}

		// Weekly Day(s) (required when frequency is weekly and weekly_type is day).
		if ( $continue ) {

			// Weekly type value is required.
			if ( 'weekly' === $args['frequency'] && 'day' === $args['weekly_type'] ) {

				// Weekly day valid values.
				$weekly_day_valid_values = array(
					'SU',
					'MO',
					'TU',
					'WE',
					'TH',
					'FR',
					'SA',
				);

				// If value is single string, convert to array.
				if ( ! empty( $args['weekly_day'] ) && in_array( $args['weekly_day'], $weekly_day_valid_values, true ) ) {
					$args['weekly_day'] = (array) $args['weekly_day']; // convert single value to array.
				}

				// If value is empty, assume Start Date's day of week.
				if ( empty( $args['weekly_day'] ) && ! empty( $rrule_args['DTSTART'] ) ) {
					$args['weekly_day'] = array( $start_date_day_of_week_abbrev );
				}

				// Weekly day value is invalid.
				if ( empty( $args['weekly_day'] ) ) {
					$continue = false; // value is invalid.
				}

				// Weekly day value is valid, continue...
				else {

					// Not an array.
					if ( ! is_array( $args['weekly_day'] ) ) {
						$continue = false; // value is invalid.
					}

					// Is an array.
					else {

						// Array to collect weekly day values for rrule.
						$weekly_day_rrule = array();

						// Loop 2-letter day of week code(s).
						foreach ( $args['weekly_day'] as $weekly_day_value ) {

							// Day of week code is invalid.
							// All must be valid to continue.
							if ( ! in_array( $weekly_day_value, $weekly_day_valid_values ) ) {

								$continue = false;
								$weekly_day_rrule = array();

								break;

							}

							// Valid, add to array for rrule.
							else {
								$weekly_day_rrule[] = $weekly_day_value;
							}

						}

						// Format for rrule.
						if ( $continue && $weekly_day_rrule ) { // values all valid.
							$rrule_args['BYDAY'] = $weekly_day_rrule;
						}

					}

				}

			}

			// Monthly week not required in this case.
			else {
				$args['weekly_day'] = '';
			}

		}

		// Monthly Type (required when frequency is monthly).
		if ( $continue ) {

			// Value is required.
			if ( 'monthly' === $args['frequency'] ) {

				// Valid monthly types.
				$valid_monthly_types = array(
					'day',
					'week'
				);

				// Default to day if none.
				if ( empty( $args['monthly_type'] ) ) {
					$args['monthly_type'] = 'day';
				}

				// Value is invalid.
				if ( ! in_array( $args['monthly_type'], $valid_monthly_types, true ) ) {
					$continue = false; // value is invalid.
				}

			}

			// Monthly type not required if frequency isn't monthly.
			else {
				$args['monthly_type'] = '';
			}

		}

		// Monthly Week(s) (required when frequency is monthly and monthly_type is week).
		if ( $continue ) {

			// Monthly type value is required.
			if ( 'monthly' === $args['frequency'] && 'week' === $args['monthly_type'] ) {

				// Monthly week valid values.
				$monthly_week_valid_values = array( '1', '2', '3', '4', '5', 'last' );

				// First, if value is single string, convert to array.
				// Church Content Pro converted to this format to accommodate multiple weeks of month.
				// This is to create some backwards compatibility between this class and old Custom Recurring Events users.
				if ( ! empty( $args['monthly_week'] ) && in_array( $args['monthly_week'], $monthly_week_valid_values, true ) ) {
					$args['monthly_week'] = (array) $args['monthly_week']; // convert single value to array.
				}

				// Monthly week value is invalid.
				if ( empty( $args['monthly_week'] ) ) {
					$continue = false; // value is invalid.
				}

				// Monthly week value is invalid, continue...
				else {

					// Not an array.
					if ( ! is_array( $args['monthly_week'] ) ) {
						$continue = false; // value is invalid.
					}

					// Is an array.
					else {

						// Array to collect monthly week values for rrule (BYSETPOS).
						$monthly_week_rrule = array();

						// Loop values to validate each and add to array.
						foreach ( $args['monthly_week'] as $monthly_week_value ) {

							// Is value valid?
							if ( ! in_array( $monthly_week_value, $monthly_week_valid_values, true ) ) {

								$continue = false; // value is invalid.
								$monthly_week_rrule = array();

								break; // stop checking other values; they must all be valid.

							}

							// Valid, add to array for rrule.
							$monthly_week_rrule[] = str_replace( 'last', '-1', $monthly_week_value ); // convert 'last' to -1 for rrule last week of month in BYSETPOS.

						}

						// Format for rrule.
						if ( $continue && $monthly_week_rrule ) { // values all valid.
							$rrule_args['BYSETPOS'] = implode( ',', $monthly_week_rrule ); // 1 is week one, 2, 3, etc.; -1 is last week of month. Comma-separated.
							$rrule_args['BYDAY'] = $start_date_day_of_week_abbrev; // start date's day of week as 2-letter abbreviation.
						}

					}

				}

			}

			// Monthly week not required in this case.
			else {
				$args['monthly_week'] = '';
			}

		}

		// Excluded dates.
		// See get_dates() for how Rset uses this.
		if ( $continue ) {

			// Convert string to array.
			$args['excluded_dates'] = (array) $args['excluded_dates'];

			// Loop each.
			foreach ( $args['excluded_dates'] as $k => $excluded_date ) {

				// Invalid date.
				if ( ! $this->validate_date( $excluded_date ) ) {
					unset( $args['excluded_dates'][ $k ] ); // remove from array.
				}

			}

		}

		// Limit (optional).
		if ( $continue ) {

			// Set default if no until date to prevent infinite loop.
			if ( empty( $args['limit'] ) && empty( $args['until_date'] ) ) {
				$args['limit'] = 100;
			}

			// Limit is not numeric or is negative
			if ( ! empty( $args['limit'] ) && ( ! is_numeric( $args['limit'] ) || $args['limit'] < 1 ) ) {
				$args['limit'] = false;
			}

			// Format for rrule.
			else {

				// Only if UNTIL not set; cannot use both with rrule.
				// get_pages() will enforce limit when UNTIL is used.
				if ( empty( $rrule_args['UNTIL'] ) ) {
					$rrule_args['COUNT'] = $args['limit'];
				}

			}

		}

		// Have valid arguments.
		if ( $continue ) {

			// Combine args and rrule_args into an array.
			$prepared_args = array(
				'args' => ! empty( $args ) ? $args : array(),
				'rrule_args' => ! empty( $rrule_args ) ? $rrule_args : array(),
			);

		}

		// Arguments were invalid.
		else {
			$prepared_args = false;
		}

		// Return arrays of prepared arguments, or false if invalid.
		return $prepared_args;

	}

	/**
	 * Get dates
	 *
	 * Get multiple recurring dates based on given arguments.
	 * The start date is included in the dates returned.
	 *
	 * Until 2.0, this calculated dates using its own proprietary calculations. Now it uses php-rrule.
	 * The original argument names are still used and auto-converted to rrule format so the results
	 * from the newer versions are backwards compatible.
	 *
	 * @since 0.9
	 * @access public
	 * @param array $args Arguments determining recurrence.
	 * @return array|bool Array of dates or empty array (false) if arguments invalid.
	 */
	public function get_dates( $args ) {

		// Return empty array / false if no result.
		$dates = array(); // empty array is false but more compatible in case a theme or plugin expects array.

		// Get prepared arguments.
		$prepared_args = $this->prepare_args( $args );

		// Have valid arguments.
		if ( $prepared_args ) {

			// Get cleaned and rrule args.
			$args = $prepared_args['args']; // original arguments prepared.
			$rrule_args = $prepared_args['rrule_args']; // rrule args to add to RSet.

			// Get multiple recurring dates.
			if ( $rrule_args ) {

				// Start building RSet.
				$rset = new RSet();
				$rset->addRRule( $rrule_args );

				// Exclude dates.
				foreach ( $args['excluded_dates'] as $excluded_date ) {
					$rset->addExDate( $excluded_date );
				}

				// Format and add to array.
				foreach ( $rset as $date ) {
					$dates[] = $date->format( 'Y-m-d' );
				}

				// Limit results.
				// With rrule, limit has no effect when until_date is in use, so it's possible limit is exceeded when using until_date.
				// This ensure limit is always enforced.
				if ( ! empty( $args['limit'] ) && is_numeric( $args['limit'] ) && $args['limit'] > 0 ) { // given, is number, not negative.
					$dates = array_slice( $dates, 0, $args['limit'] );
				}

			}

		}

		return $dates;

	}

	/**
	 * Calculate next future date
	 *
	 * Calculate the next date in the future (may be today) without regard for until_date or limit (practically speaking).
	 * This is helpful when cron misses a beat.
	 *
	 * @since 0.9
	 * @access public
	 * @param array $args Arguments determining recurrence
	 * @return string|bool YYYY-mm-dd Date string or false if arguments invalid or no next date
	 */
	public function calc_next_future_date( $args ) {

		// Return false if cannot determine next future date.
		$next_future_date = false;

		// Validate and set default arguments.
		$prepared_args = $this->prepare_args( $args ); // false if invalid.

		// Have valid arguments.
		if ( ! empty( $prepared_args['args'] ) ) {

			// Replace given args with prepared args.
			$args = $prepared_args['args'];

			// Remove the bounds of until_date and limit.
			$args['until_date'] = ''; // old version of class before php-rrule disregarded until_date, keeping this behavior.
			$args['limit'] = '1000'; // 1000 is virtually unlimited without significant performance hit, to avoid infinite loop.

			// Convert today's date to localized timestamp for comparison.
			$today_ts = strtotime( date_i18n( 'Y-m-d' ) ); // localized.

			// Get date occurences.
			$dates = $this->get_dates( $args );

			// Have dates.
			if ( $dates ) {

				// Loop dates.
				foreach ( $dates as $date ) {

					// Convert date to timestamp for comparison.
					$date_ts = strtotime( $date );

					// Is this date today or future?
					if ( $date_ts >= $today_ts ) {

						// Capture as next future date.
						$next_future_date = $date;

						// Stop, we only need the first that is not past.
						break;

					}

				}

			}

		}

		// Return date or false if none.
		return $next_future_date;

	}

	/**
	 * Validate date.
	 *
	 * It must not be empty, must be in YYYY-mm-dd format (e.g. not 2017-1-1) and be a valid date (e.g. not February 30).
	 *
	 * @since 0.9
	 * @access public
	 * @param string $date Date in YYYY-mm-dd format
	 * @return bool True if date is valid.
	 */
	public function validate_date( $date ) {

		// False if fails validation.
		$valid = false;

		// Check format.
		// 2014-1-1 is not valid.
		if ( ! empty( $date ) && preg_match( '/([0-9]{4})-([0-9]{2})-([0-9]{2})/', $date ) ) {

			// Get year, month, day.
			list( $y, $m, $d ) = explode( '-', $date );

			// Check that date itself is valid.
			if ( checkdate( $m, $d, $y ) ) {
				$valid = true;
			}

		}

		// Return true or false.
		return $valid;

	}

}

/*******************************************
 * EXAMPLE USAGE
 *******************************************/

// Uncomment or copy elsewhere then go to /wp-admin/?recurrence_test=1
/*
if ( is_admin() && ! empty( $_GET['recurrence_test' ] ) ) {

	// Instantiate class first.
	$ct_recurrence = new CT_Recurrence();

	// Specify arguments
	// Note: until_date does not have effect on calc_next_future_date, only get_dates().
	$args = array(
		'start_date'     => '2017-10-01', // first day of event, YYYY-mm-dd (ie. 2015-07-20 for July 15, 2015).
		'until_date'     => '2017-12-31', // date recurrence should not extend beyond (has no effect on calc_next_future_date method).
		'frequency'      => 'weekly', // weekly, monthly, yearly.
		'interval'       => '1', // every X weeks, months or years.
		'weekly_type'   => 'day', // 'same' (same day of week) or 'day' (on specific days(s)); if recurrence is weekly ('same' is default).
		'weekly_day'     => array( // single value, array or JSON-encoded array of day of week in 2-letter format (SU, MO, TU, etc.). If empty, uses same day of week.
								//'SU',
								//'MO',
								//'TU',
								//'WE',
								//'TH',
								//'FR',
								//'SA',
							),
		'monthly_type'   => 'week', // 'day' (same day of month) or 'week' (on specific week(s)); if recurrence is monthly ('day' is default).
		'monthly_week'   => array( // single value, array or JSON-encoded array of numeric week(s) of month (or 'last') (e.g. 1, 2, 3, 4, 5 or last).
								//'1',
								//'2',
								//'3',
								//'4',
								//'5',
								//'last',
							),
		'excluded_dates' => array(
								//'2017-10-01',
								//'2019-09-04',
								),
		'limit'          => '', // maximum dates to return (if no until_date, default is 1000 to prevent infinite loop).
	);

	// Get prepared args for display purposes only (get_dates() and calc_next_future_date() do this on their own).
	$prepared_args = $ct_recurrence->prepare_args( $args );

	?>

	<h4>get_dates()</h4>

	<?php
	$dates = $ct_recurrence->get_dates( $args );
	?>

	<pre><?php

		if ( $dates ) {

			foreach( $dates as $date ) {
				echo date( 'Y-m-d  F j, Y 	(l)', strtotime( $date ) );
				echo '<br>';
			}

		}

	?></pre>

	<h4>calc_next_future_date()</h4>

	<?php

	$next_future_date = $ct_recurrence->calc_next_future_date( $args );

	if ( $next_future_date ) {
		echo '<pre>' . date( 'Y-m-d  F j, Y 	(l)', strtotime( $next_future_date ) ) . '</pre>';
	}

	?>

	<h4>$args passed in</h4>

	<?php echo '<pre>' . print_r( $args, true ) . '</pre>'; ?>

	<h4>$args prepared</h4>

	<?php echo '<pre>' . print_r( $prepared_args['args'], true ) . '</pre>'; ?>

	<h4>$rrule_args</h4>

	<?php echo '<pre>' . print_r( $prepared_args['rrule_args'], true ) . '</pre>'; ?>

	<?php

	exit;

}
*/