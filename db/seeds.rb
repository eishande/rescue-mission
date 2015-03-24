# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?

  User.create!(provider: "github", uid: "9001", username: "emanresu", email: "emanresu@users.com")

  10.times do |num|
    Question.create(title: "Question#{num+1} New Question Question#{num+1} New Question Question#{num+1} New Question", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec tellus augue. Phasellus posuere leo turpis, ac facilisis sem mollis et. Pellentesque leo velit, vulputate sed nibh eget, tristique sodales sem. Vestibulum commodo dolor bibendum consequat rutrum. Sed euismod vestibulum lectus. Aliquam tempor ornare lacus, nec semper leo bibendum id. Aenean dictum mollis ligula ac imperdiet. Sed consectetur turpis a ex semper posuere. Sed aliquam justo tempor arcu pretium, nec porttitor neque placerat. Nullam eros quam, imperdiet a mattis eu, finibus at nisi. Vivamus mauris odio, laoreet ac feugiat eu, imperdiet ac enim. Curabitur dui risus, maximus ultrices scelerisque vel, pretium fermentum arcu. Aliquam quis ultricies quam. Curabitur ullamcorper augue in lacus pellentesque facilisis. Sed ac fringilla erat. Proin sit amet mauris nec elit mattis tempor non vitae odio.", user_id: 1)
  end
end
