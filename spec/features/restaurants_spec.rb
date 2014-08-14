require 'rails_helper'

describe 'restaurant' do 

	context 'if the database is empty' do
		it 'it should display input form to add one and an error message' do
			visit('/restaurants')
			expect(page).to have_content('Add restaurant There is no current restaurant')
			expect(page).to have_link('Add restaurant')
		end
	end

	context 'the user can' do
		
		before(:each) do
			Restaurant.create(name: "Nandos",cuisine: "chicken")
		end

		it 'see the restaurants' do
			visit('/restaurants')
			expect(page).to have_content('Nandos chicken')
		end

		it 'raise the counter when it is created in the db' do
			expect(Restaurant.count).to eq 1
		end

		it 'add' do
			visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "Nandos"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant'
			 expect(page).to have_content("Nandos chicken")
			 expect(current_path).to eq('/restaurants')
		end


		
	end

	

end
