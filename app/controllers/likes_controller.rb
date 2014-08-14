class LikesController < ApplicationController

	def create 
		@review = Review.find(params[:review_id])
		@review.likes.create
		render json: { new_like_count: @review.likes.count, new_sentence: @review.pluralize_likes }
	end 

end
