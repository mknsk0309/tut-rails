# ユーザレコードの作成
5.times do |n|
  User.create!(
    email_address: "user#{n+1}@example.com",
    password: "password"
  )
end
