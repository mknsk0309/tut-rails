# ユーザレコードの作成
5.times do |n|
  user = User.create!(
    account_id: "account#{n + 1}",
    name: "ユーザ#{n + 1}",
    email_address: "user#{n + 1}@example.com",
    password: "password"
  )
  user.update!(birthday: Date.today.strftime("%Y/%m/%d")) if n > 0
end
