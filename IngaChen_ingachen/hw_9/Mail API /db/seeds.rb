5.times do
  Message.create(
    subject: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    status: ['received', 'sent'].sample,
    user_id: 1
  )
end
