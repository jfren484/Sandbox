<?php
/**
 * CT Recurrence Load Class
 *
 * This loads ct-recurrence.php when PHP is 5.3 or higher and ct-recurrence-compat.php when not.
 * When PHP version is insufficient, get_dates() returns empty array and calc_next_future_date()
 * returns false to prevent errors from php-rrule. See README.md for more details.
 *
 * @package   CT_Recurrence
 * @copyright Copyright (c) 2017, churchthemes.com
 * @link      https://github.com/churchthemes/ct-recurrence
 * @license   GPLv2 or later
 */

// No direct access.
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

// Class may already be included by theme or another plugin.
if ( ! class_exists( 'CT_Recurrence_Load' ) ) {

	/**
	 * CT Recurrence Load Class
	 *
	 * @since 0.9
	 */
	class CT_Recurrence_Load {

		/**
		 * Constructor
		 *
		 * @since 2.0
		 * @access public
		 */
		public function __construct() {

			// Set constants.
			$this->set_constants();

			// Load appropriate version of class depending on situation.
			$this->load_class();

		}

		/**
		 * Set constants.
		 */
		function set_constants() {

			// PHP version required at minimum.
			define( 'CTR_PHP_MIN_VERSION', '5.3' );

		}

		/**
		 * Load class.
		 *
		 * Check if CT_Recurrence already loaded (by theme or other plugin).
		 * Load appropriate version of class depending on version of PHP.
		 *
		 * @since 2.0
		 * @access public
		 */
		public function load_class() {

			// Class may already be included by theme or another plugin.
			if ( ! class_exists( 'CT_Recurrence' ) ) {

				// PHP version is sufficient.
				if ( ! $this->php_is_old() ) {
					$class_file = 'ct-recurrence.php';
				}

				// PHP version is not sufficient.
				else {
					$class_file = 'ct-recurrence-compat.php';
				}

				// Load class.
				include dirname( __FILE__ ) . '/' . $class_file;

			}

		}

		/**
		 * Check PHP version.
		 *
		 * Check if PHP version is too old for CT Recurrence.
		 *
		 * @since 2.0
		 * @access public
		 */
		function php_is_old() {

			// PHP version in use.
			$php_version_used = phpversion();

			// PHP version required at minimum.
			$php_version_required = CTR_PHP_MIN_VERSION;

			// PHP version is sufficient.
			if ( version_compare( $php_version_used, $php_version_required, '>=' ) ) {
				$php_is_old = false;
			}

			// PHP version is not sufficient.
			else {
				$php_is_old = true;
			}

			return $php_is_old;

		}

	}

	// Instantiate the class.
	new CT_Recurrence_Load();

}
