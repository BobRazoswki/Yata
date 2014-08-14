require 'rails_helper'

describe 'create restaurant' do
	context 'a valid restaurant' do

		it 'promps the user to fill out a form' do
			visit('/restaurants')
			 click_link 'Add restaurant'
			 
			 fill_in 'Name', :with => "Nandos"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant'

			 expect(page).to have_content("Nandos chicken")
			 expect(current_path).to eq('/restaurants')
		end
	end

	context 'a invalid restaurant' do
		it 'promps an error to the user' do
			 visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "N"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant' 
			 expect(page).to have_content("error")
			 expect(current_path).to eq('/restaurants')
		end
	end

describe 'a user creates a restaurant' do 

	context 'logged out' do
		it '' do
			
		end
	end
	

	context 'logged in' do
			it '' do
			
		end
	end
end



end