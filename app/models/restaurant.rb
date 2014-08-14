class Restaurant < ActiveRecord::Base
	has_many :reviews
	validates :name, presence: true, length: { minimum: 5 }, format: {with: /\A[A-Z]/, message: "majuscule plz"}

  def _average_rating
  	return 'N/A' if reviews.none?
		reviews.average(:rate).round(2)
	end

end


	