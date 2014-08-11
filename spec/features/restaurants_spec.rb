require 'rails_helper'

describe 'restaurants' do 

	context 'no restaurant' do
		it 'should display input form and an error message' do
			visit('/restaurants')
			expect(page).to have_content('no restaurants')
			expect(page).to have_link('Add restaurant')
		end
	end

	context 'bringing the db' do
		before(:each) do
			Restaurant.create(name: "Nandos")
		end

		it 'create a restaurant' do
			visit('/restaurants')
			expect(page).to have_content('Nandos')
		end

	end
end
