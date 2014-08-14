$(document).ready(function() {

	$('.show_reviews').on('click', function() {

		$(this).siblings('.display_reviews').slideToggle("slow");

		if ($(this).text() === 'Hide reviews') {
			$(this).text('Show reviews')
		}
		else {
			$(this).text('Hide reviews')
		}

	});

	$('.like-link').on('click', function(event) {
		var likeCount = $(this).siblings('.like-count')
		event.preventDefault();

		$.post(this.href, function(response) {
			likeCount.text(response.new_like_count + response.new_sentence)
		});
	});
});


/*
	$('.show_reviews').on('click', function() {
		$(this).siblings().slideDown("slow");

	});

*
	$(document).ready(function() {

	$('.show_reviews').on('click', function() {
		$(this).siblings('.display_reviews').slideDown("slow");
	});

	$('.hide_reviews').on('click', function() {
		$(this).parent().slideUp("slow");
	});

	$('.like-link').on('click', function(event) {
		var likeCount = $(this).siblings('.like-count')
		event.preventDefault();

		$.post(this.href, function(response) {
			likeCount.text(response.new_like_count + response.new_sentence)
		});
	});
});
*/
	