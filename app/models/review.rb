class Review < ActiveRecord::Base
  belongs_to :restaurant

has_many :likes

end
