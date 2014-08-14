require 'rails_helper'

describe 'likes' do 

	before do
		kfc = Restaurant.create(name: 'Kfffffc', cuisine: 'chicken')
		kfc.reviews.create(rate: 3, comment: "bob")
	end

	it 'add a like', js: true do
		visit('/restaurants')
		click_button 'Show reviews'
		click_link "Like"
		# find('.like-link').click
		expect(page).to have_content '1 Like'
	end

	it 'pluralize the like sentece', js: true do
		visit('/restaurants')
		click_button 'Show reviews'
		3.times { click_link "Like" }
		# find('.like-link').click
		expect(page).to have_content '3 Likes'
	end

end

