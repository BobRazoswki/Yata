class ReviewsController < ApplicationController

include ReviewsHelper

	def index
		@reviews = Reviews.all
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = _new_review
		@review.save ? redirect_to('/restaurants') : render('new')
	end

end
