require 'rails_helper'

RSpec.describe ReviewsHelper, :type => :helper do
	describe '#star_rating' do
		xit 'does nothung if rating is not a number' do
			expect(helper.star_rating('N/A')).to eq('N/A')
		end
	end
end