require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to view recently posted questions
  So that I can help others
} do
  # Acceptance Criteria
 #  I must see the title of each question
 #  I must see questions listed in order, most recently posted first

  scenario 'visitor views all questions' do
    user = User.create!(provider: "github", uid: "9001", username: "emanresu", email: "emanresu@users.com")
    question = Question.create!(title: "Question New Question Question New Question Question New Question",
                               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec tellus augue. Phasellus posuere leo turpis, ac facilisis sem mollis et. Pellentesque leo velit, vulputate sed nibh eget, tristique sodales sem. Vestibulum commodo dolor bibendum consequat rutrum. Sed euismod vestibulum lectus. Aliquam tempor ornare lacus, nec semper leo bibendum id. Aenean dictum mollis ligula ac imperdiet. Sed consectetur turpis a ex semper posuere. Sed aliquam justo tempor arcu pretium, nec porttitor neque placerat. Nullam eros quam, imperdiet a mattis eu, finibus at nisi. Vivamus mauris odio, laoreet ac feugiat eu, imperdiet ac enim. Curabitur dui risus, maximus ultrices scelerisque vel, pretium fermentum arcu. Aliquam quis ultricies quam. Curabitur ullamcorper augue in lacus pellentesque facilisis. Sed ac fringilla erat. Proin sit amet mauris nec elit mattis tempor non vitae odio.",
                               user: user)

    #sign_in_as(user)
    visit '/'
    expect(page).to have_content(question.title)
  end

  scenario 'visitor views an individual question' do
    user = User.create!(provider: "github", uid: "9001", username: "emanresu", email: "emanresu@users.com")
    question = Question.create!(title: "Question New Question Question New Question Question New Question",
                               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec tellus augue. Phasellus posuere leo turpis, ac facilisis sem mollis et. Pellentesque leo velit, vulputate sed nibh eget, tristique sodales sem. Vestibulum commodo dolor bibendum consequat rutrum. Sed euismod vestibulum lectus. Aliquam tempor ornare lacus, nec semper leo bibendum id. Aenean dictum mollis ligula ac imperdiet. Sed consectetur turpis a ex semper posuere. Sed aliquam justo tempor arcu pretium, nec porttitor neque placerat. Nullam eros quam, imperdiet a mattis eu, finibus at nisi. Vivamus mauris odio, laoreet ac feugiat eu, imperdiet ac enim. Curabitur dui risus, maximus ultrices scelerisque vel, pretium fermentum arcu. Aliquam quis ultricies quam. Curabitur ullamcorper augue in lacus pellentesque facilisis. Sed ac fringilla erat. Proin sit amet mauris nec elit mattis tempor non vitae odio.",
                               user: user)
    visit '/'
    click_link question.title
    expect(page).to have_content(question.description)
  end
end
