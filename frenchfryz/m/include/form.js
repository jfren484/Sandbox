$(document).bind('pageinit', function() {
	$('.autoAjaxForm').submit(function(e) {
		e.preventDefault();

		$.ajax({
			cache: false,
			type: $(this).attr('method'),
			url: $(this).attr('action'),
			data: $(this).serialize(),
			success: function(data, textStatus, jqXHR) {
				alert(data);
				window.location = '/';
			},
			error: function(jqXHR, textStatus, errorThrown) {
				alert(errorThrown);
				alert(textStatus);
			}
		});

		return false;
	});
});

