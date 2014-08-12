require 'rails_helper'

describe 'restaurant' do 

	context 'no restaurant' do
		it 'should display input form and an error message' do
			visit('/restaurants')
			expect(page).to have_content('There is no current restaurant Add restaurant')
			expect(page).to have_link('Add restaurant')
		end
	end

	context 'bringing to the db' do
		
		before(:each) do
			Restaurant.create(name: "Nandos",
				cuisine: "chicken")
		end

		it 'create a restaurant' do
			visit('/restaurants')
			expect(page).to have_content('Nandos chicken')
		end

		it 'raise the counter of the restaurant' do
			expect(Restaurant.count).to eq 1
		end
	end

	describe 'visitors can create restaurants' do
		before(:each) do
			Restaurant.create(name: "Nandos",
				cuisine: "chicken")
		end
		it 'ADD' do
			visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "Nandos"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant'

			 expect(page).to have_content("Nandos chicken")
			 expect(current_path).to eq('/restaurants')
		end
	end

	describe 'visitors can edit restaurants' do
		before(:each) do
			Restaurant.create(name: "Nandos",
				cuisine: "chicken")
		end
		it 'UPDATE / EDIT' do
			visit('/restaurants')
			 click_link 'Edit Nandos'
			 fill_in 'Name', :with => "NandosNew"
			 fill_in 'Cuisine', :with => "chicken1"
			 click_button 'Add restaurant'
			 expect(page).to have_content("NandosNew chicken1")
			 expect(current_path).to eq('/restaurants')
		end
	end

	describe 'visitors can create restaurants' do
		before(:each) do
			Restaurant.create(name: "Nandos",
				cuisine: "chicken")
		end
		it 'DELETE' do
			visit('/restaurants')
			 click_link 'Delete Nandos'
			 expect(page).not_to have_content("Nandos chicken")
			 expect(page).to have_content("deleted")
			 expect(current_path).to eq('/restaurants')
		end
	end


end
