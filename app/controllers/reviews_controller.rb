class ReviewsController < ApplicationController

	def index
		@reviews = Reviews.all
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = @restaurant.reviews.new(params[:review].permit(:comment, :rate))

		if @review.save
   		redirect_to '/restaurants'
  	else
    	render 'new'
  	end

	end

end

=begin
private 
	def review_param
	params.require(:review).permit(:restaurant_id, :review_id, :commit)
	end
=end