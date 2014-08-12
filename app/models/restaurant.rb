class Restaurant < ActiveRecord::Base
	has_many :reviews
	validates :name, presence: true, length: { minimum: 5 }, format: {with: /\A[A-Z]/, message: "majuscule plz"}


end


	