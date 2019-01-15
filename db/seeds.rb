User.create!(name:  "Ngo Van Nghia",
  email: "ngovannghia1997kma@gmail.com",
  password:              "123456",
  password_confirmation: "123456",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

99.times do |n|
  name  = FFaker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
    email: email,
    password: password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = FFaker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
