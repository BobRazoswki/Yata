class Restaurant < ActiveRecord::Base
	has_many :reviews
	 validates :name, presence: true,
                    length: { minimum: 5 }


end
