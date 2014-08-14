require 'rails_helper'

describe 'create restaurant' do
	context 'a valid restaurant' do

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
		it 'not enough letters' do
			 visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "N"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant' 
			 expect(page).to have_content("error")
			 expect(current_path).to eq('/restaurants')
		end

		it 'not an uppercase' do
			 visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "nandos"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant' 
			 expect(page).to have_content("error")
			 expect(current_path).to eq('/restaurants')
		end
	end

describe 'a user creates a restaurant' do 

	context 'logged out' do

		it 'not possible to add a restaurant' do
			 visit('/restaurants')
			 click_link 'Add restaurant'
			 expect(page).to have_content("You need to sign in or sign up before continuing")
			 expect(current_path).to eq('/users/sign_in')
		end

	end
	

	context 'logged in' do
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
		it 'not enough letters' do
			 visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "N"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant' 
			 expect(page).to have_content("error")
			 expect(current_path).to eq('/restaurants')
		end

		it 'not an uppercase' do
			 visit('/restaurants')
			 click_link 'Add restaurant'
			 fill_in 'Name', :with => "nandos"
			 fill_in 'Cuisine', :with => "chicken"
			 click_button 'Add restaurant' 
			 expect(page).to have_content("error")
			 expect(current_path).to eq('/restaurants')
		end
	end
end



end