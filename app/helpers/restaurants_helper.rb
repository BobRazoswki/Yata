module RestaurantsHelper

def _destroy_restaurant
		@restaurant.destroy
		flash[:notice] = "deleted"
		redirect_to('/restaurants')
end

def _update_restaurant
		@restaurant.update(restaurants_params)
		flash[:notice] = "Updated"
		redirect_to('/restaurants')
end

private 

	def restaurants_params
		params.require(:restaurant).permit(:name, :cuisine)
	end

	
end
