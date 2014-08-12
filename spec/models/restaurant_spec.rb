require 'rails_helper'

RSpec.describe Restaurant, :type => :model do 

	it 'if name < 5 character' do
		restaurant = Restaurant.new(name: "Bob", cuisine: 'chicken')
		expect(restaurant).to have(1).error_on(:name)
	end

	it 'if does not start with an uppercase' do
		restaurant = Restaurant.new(name: "bobbbbbbbbb")
		expect(restaurant).to have(1).error_on(:name)
	end
	
	it 'if does not uniq' do
		Restaurant.create(name: "bobbbbbbbbb")
		restaurant = Restaurant.new(name: "bobbbbbbbbb")
		expect(restaurant).to have(1).error_on(:name)
	end

end