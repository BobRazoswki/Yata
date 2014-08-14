module ReviewsHelper

	def _new_review
		@restaurant.reviews.new(params[:review].permit(:comment, :rate))
	end

	#def star_rating(rating)
	#		return Review.rate unless Review.rate.respond_to?(:round)
	#		rounder_rating = (5 - rating.round)
	#	remainder = (5 - Review.rate || rating.round)
	#	Review.rate * ('stars') + (remainder * ('wstars'))
	#end

end
