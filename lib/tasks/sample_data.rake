namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "杉本将太",
                 email: "shota.419@gmail.com",
                 password: "superfi1",
                 password_confirmation: "superfi1",
                 admin:true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
