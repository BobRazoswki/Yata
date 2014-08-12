describe 'Review' do

		before(:each) do
			Restaurant.create(id: "1", name: "Nandos",
				cuisine: "chicken")
		end

		it 'a review can be added' do
			visit('/restaurants')
			find("option[value='1']").click
			click_button 'Add review'
			expect(Review.count).to eq 1
			expect(page).to have_content('muy malo')
		end
	end