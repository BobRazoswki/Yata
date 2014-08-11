require 'rails_helper'

describe 'restaurant' do 

	context 'no restaurant' do
		it 'should display input form and an error message' do
			visit('/restaurants')
			expect(page).to have_content('no restaurants')
			expect(page).to have_link('Add restaurant')
		end
	end

	context 'bringing the db' do
		before(:each) do
			Restaurant.create(name: "Nandos",
				cuisine: "chicken")
		end

		it 'create a restaurant' do
			visit('/restaurants')
			expect(page).to have_content('Nandos chicken')
		end

	end
end
