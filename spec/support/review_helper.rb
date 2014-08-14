def leave_review(restaurant, comment, rate)
  visit '/restaurants'
  fill_in 'review_comment', with: comment
  choose rate
  click_button 'Add review'
end