10.times do
  Item.create(
    title: Faker::Commerce.product_name,
    inventory: Faker::Number.number,
    price: Faker::Number.number
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

User.create(
email: "labfattomale@rails.com",
password: "12345678")
