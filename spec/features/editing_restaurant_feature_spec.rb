	require 'rails_helper'

describe '' do

	before(:each) do
		Restaurant.create(name:"Nandos")
		alex = User.create(
			 first_name: "Bob",
			 last_name: "Bob",
			 profile_name: "Bob",
			 email: "a@a.com",
			 password: "123456789",
			 password_confirmation: "123456789")
		login_as("a@a.com", "123456789")
	end

context 'logged as the creator' do
	it 'update and edit' do
			visit('/restaurants')
			 click_link 'Edit Nandos'
			 fill_in 'Name', :with => "NandosNew"
			 fill_in 'Cuisine', :with => "chicken1"
			 click_button 'Add restaurant'
			 expect(page).to have_content("NandosNew chicken1")
			 expect(current_path).to eq('/restaurants')
		end

		it 'delete' do
			visit('/restaurants')
			 click_link 'Delete Nandos'
			 expect(page).not_to have_content("Nandos chicken")
			 expect(page).to have_content("deleted")
			 expect(current_path).to eq('/restaurants')
		end
end

context 'logged as somebody else' do
		it 'update and edit' do
			visit('/restaurants')
			 click_link 'Edit Nandos'
			 fill_in 'Name', :with => "NandosNew"
			 fill_in 'Cuisine', :with => "chicken1"
			 click_button 'Add restaurant'
			 expect(page).to have_content("NandosNew chicken1")
			 expect(current_path).to eq('/restaurants')
		end

		it 'delete' do
			visit('/restaurants')
			 click_link 'Delete Nandos'
			 expect(page).not_to have_content("Nandos chicken")
			 expect(page).to have_content("deleted")
			 expect(current_path).to eq('/restaurants')
		end
end
end