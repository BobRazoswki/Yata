class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
		@review = Review.new
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(restaurants_params)

		if @restaurant.save
   		redirect_to '/restaurants'
  	else
    	render 'new'
  	end

	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.update(restaurants_params)
		redirect_to '/restaurants'
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		flash[:notice] = "deleted"
		redirect_to '/restaurants'
	end

private 

	def restaurants_params
		params.require(:restaurant).permit(:name, :cuisine)
	end

end
