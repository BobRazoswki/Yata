class Review < ActiveRecord::Base
	
  belongs_to :restaurant
	has_many :likes

	def pluralize_likes
		likes.count <= 1 ? " Like for this review, your turn to ==>" : " Likes for this review, your turn to ==>"
	end

end
