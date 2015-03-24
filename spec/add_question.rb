require 'rails_helper'

feature 'visitor creates question', %Q{
  As a user
  I want to post a question
  So that I can receive help from others
} do

# Acceptance Criteria
#
# - I must provide a title that is at least 40 characters long
# - I must provide a description that is at least 150 characters long
# - I must be presented with errors if I fill out the form incorrectly

  scenario 'add a valid question' do
    question_title = 'Pumpkin Martini Pumpkin Martini Pumpkin Martini'
    visit '/questions/new'

    fill_in 'Title', with: question_title
    fill_in 'Description', with: 'Likely the best martini you will ever have. A Thanksgiving must. Likely the best martini you will ever have. A Thanksgiving must. Likely the best martini you will ever have. A Thanksgiving must. Likely the best martini you will ever have. A Thanksgiving must. Likely the best martini you will ever have. A Thanksgiving must. Likely the best martini you will ever have. A Thanksgiving must.'

    click_button 'Ask Question'

    expect(page).to have_content('Question added.')
    expect(page).to have_content(question_title)
  end

  scenario 'attempt to add an invalid question' do
    visit '/questions/new'

    click_button 'Ask Question'

    expect(page).to have_content("can't be blank")
  end
end
