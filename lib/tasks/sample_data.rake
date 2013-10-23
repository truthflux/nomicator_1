namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Captain Haddock",
                 email: "haddock@example.com",
                 password: "foobar",
                 password_confirmation: "foobar",)

    admin.toggle!(:admin)


    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)

    end

    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(8)
      users.each { |user| user.activity_logs.create!(content: content )}
    end
  end
end