require 'rails_helper'

describe 'Review' do

	let!(:restaurant) do
		Restaurant.create(id: "1", name: "Nandos",cuisine: "chicken")
	end

	it 'can be added' do
		visit('/restaurants')
		choose('1')
		click_button 'Add review'
		expect(Review.count).to eq 1
	end

	describe 'no review#average' do

		
	context 'no reveiews' do

			it 'display N/A'do 
				expect(restaurant._average_rating).to eq('N/A')
			end

		end
end
	describe 'review#average' do
			it 'can give the right output' do 
				leave_review('Nandos', 'cool', 3)
				expect(restaurant._average_rating).to eq(3)
			end

			it 'can do the round average' do 
				leave_review('Nandos', 'cool', 3)
				leave_review('Nandos2', 'bobby cool', 5)
				expect(restaurant._average_rating).to eq(4)
			end

			it 'can do the round average with 1 float' do 
				leave_review('Nandos', 'cool', '3')
				leave_review('Nandos2', 'bob  cool', '4')
				expect(restaurant._average_rating).to eq(3.5)
			end
			
			it 'can do the round average with 2 float maximum' do 
				leave_review('Nandos', 'super cool', '3')
				leave_review('Nandos', 'awes cool', '3')
				leave_review('Nandos2', 'really cool', '4')
				expect(restaurant._average_rating).to eq(3.33)
			end

	end


end