  def nine_likes
  	visit('/restaurants')
  	click_button 'Show reviews'
  	9.times { click_link('Like') }
  end
  