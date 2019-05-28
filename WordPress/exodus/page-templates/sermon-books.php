<?php
/**
 * Template Name: Sermon Books
 *
 * This shows a page with sermon books.
 *
 * content.php outputs the page content.
 */

// No direct access
if ( ! defined( 'ABSPATH' ) ) exit;

// Prepare sermon books to output after page content
function exodus_sermon_books_after_content() {

	// Books by testament
	$books_by_testament = ctfw_sermon_books_by_testament();

	?>

	<div id="exodus-sermon-books" class="exodus-sermon-index<?php if ( ctfw_has_content() ) : ?> exodus-sermon-index-has-content<?php endif; ?>">

		<?php
		// Buttons for switching between indexes
		get_template_part( 'sermon-index-header' );
		?>

		<?php if ( $books_by_testament ) : ?>

			<div id="exodus-sermon-books-list">

				<?php foreach ( $books_by_testament as $testament_key => $testament ) : ?>

					<?php if ( ! empty( $testament['books'] ) ) : ?>

						<section id="exodus-sermon-books-<?php echo esc_attr( $testament_key ); ?>" class="exodus-sermon-books-testament">

							<h2><?php echo esc_html( $testament['name'] ); ?></h2>

							<ul class="exodus-list">

								<?php foreach ( $testament['books'] as $book_key => $book ) : ?>

									<li>

										<a href="<?php echo esc_url( $book->url ); ?>">
											<?php echo esc_html( $book->name ); ?>
										</a>

										<span class="exodus-list-item-count"><?php echo esc_html( $book->count ); ?></span>

									</li>

								<?php endforeach; ?>

							</ul>

						</section>

					<?php endif; ?>

				<?php endforeach; ?>

			</div>

		<?php else : ?>

			<p id="exodus-sermon-index-none">
				<?php _e( 'There are no books to show.', 'exodus' ); ?>
			</p>

		<?php endif; ?>

	</div>

	<?php

}

// Insert content after the_content() in content.php
add_action( 'exodus_after_content', 'exodus_sermon_books_after_content' );

// Load main template to show the page
locate_template( 'index.php', true );