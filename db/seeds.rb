User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now,
             start_date: Time.zone.now)

User.create!(name:  "Example User 2",
             email: "example2@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             activated: true,
             activated_at: Time.zone.now,
             start_date: 1.month.ago)

User.create!(name:  "Example User 3",
             email: "example3@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             activated: true,
             activated_at: Time.zone.now,
             start_date: 1.month.from_now)

User.create!(name:  "Example User 4",
             email: "example4@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             activated: true,
             activated_at: Time.zone.now,
             start_date: 4.days.ago)

User.create!(name:  "Example User 5",
             email: "example5@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             supervisor: true,
             activated: true,
             activated_at: Time.zone.now,
             start_date: 4.days.ago)

#users = User.order(:created_at).take(3)
#3.times do
#  content = Faker::Lorem.sentence(5)
#  users.each { |user| user.posts.create!(content: content) }
#end