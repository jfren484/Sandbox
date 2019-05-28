<?php
/**
 * CT Recurrence Compat Class
 *
 * This version of CT_Recurrence is loaded by ct-recurrence-compat.php when the version
 * of PHP is insufficient. It returns empty values to prevent errors.
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

/**
 * CT Recurrence Compat Class
 *
 * @since 2.0
 */
class CT_Recurrence {

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
	 * @since 2.0
	 * @access public
	 */
	public function __construct() {

		// PHP version is not okay, because ct-recurrence-load.php loaded ct-recurrence-compat.php.
		// Themes and plugins can check $ct_recurrence->php_is_old to determine if need to show a notice.
		$this->php_is_old = true;
		$this->php_min_version = CTR_PHP_MIN_VERSION;

	}

	/**
	 * Dummy methods compatible with version below PHP 5.3.
	 *
	 * Thwsw methods should return what actual methods in ct-recurrence.php return on failure
	 * to fail gracefully and avoid errors. Church Content plugin prompts admins to update PHP.
	 */

	public function prepare_args( $args ) {
		return false;
	}

	public function get_dates( $args ) {
		return array();
	}

	public function calc_next_future_date( $args ) {
		return false;
	}

}
