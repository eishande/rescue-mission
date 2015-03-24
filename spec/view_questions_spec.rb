require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to view recently posted questions
  So that I can help others
} do

  before do
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
  end
  # Acceptance Criteria
 #  I must see the title of each question
 #  I must see questions listed in order, most recently posted first

  scenario 'visitor views all questions' do

    question = FactoryGirl.create(:question)
    visit '/'
    expect(page).to have_content(question.title)
  end

  scenario 'visitor views an individual question' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    question = FactoryGirl.create(:question)

    visit '/'
    click_link question.title
    expect(page).to have_content(question.description)
  end
end
