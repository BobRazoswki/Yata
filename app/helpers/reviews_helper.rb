module ReviewsHelper

	def _new_review
		@restaurant.reviews.new(params[:review].permit(:comment, :rate))
	end

end
