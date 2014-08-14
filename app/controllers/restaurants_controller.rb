class RestaurantsController < ApplicationController
#before_action :authenticate_user!, except: [:index]
include RestaurantsHelper

	def index
		@restaurants = Restaurant.all
		@review = Review.new
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(restaurants_params)
		@restaurant.save ? redirect_to('/restaurants') : render('new')
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		_update_restaurant
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		_destroy_restaurant
	end

end
