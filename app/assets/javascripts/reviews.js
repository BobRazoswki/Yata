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
				likeCount.text(response.new_like_count)
			});
		});


});



/*
	$('.show_reviews').on('click', function() {
		$(this).siblings().slideDown("slow");

	});

	
*/