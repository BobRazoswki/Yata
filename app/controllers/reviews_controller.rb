class ReviewsController < ApplicationController

	def index
		@reviews = Review.all
	end


	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = Review.new
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = @restaurant.reviews.new(params[:review].permit(:review))

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