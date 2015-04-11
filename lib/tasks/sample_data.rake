namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    # User.create! (name: "Example User",
    #               email: "example@railstutorial.org",
    #               password: "111111",
    #               password_confirmation: "111111")

    99.times do |n|
      name = "test-#{n+1}"
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end