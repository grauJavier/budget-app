# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

testUser1 = User.create!(
  name: "Test User 1",
  email: "test_user_1@gmail.com",
  password: "123456"
)

testUser2 = User.create!(
  name: "Test User 2",
  email: "test_user_2@example.com",
  password: "123456"
)

category1 = Category.create!(author_id: testUser1.id, name: "Category 1", icon: "Icon 1")
category2 = Category.create!(author_id: testUser1.id, name: "Category 2", icon: "Icon 2")
category3 = Category.create!(author_id: testUser2.id, name: "Category 3", icon: "Icon 3")
category4 = Category.create!(author_id: testUser2.id, name: "Category 4", icon: "Icon 4")

transaction1 = testUser1.transactions.create!(author_id: testUser1.id, name: "Transaction 1", amount: 1000)
transaction2 = testUser1.transactions.create!(author_id: testUser1.id, name: "Transaction 2", amount: 1000)
transaction3 = testUser2.transactions.create!(author_id: testUser2.id, name: "Transaction 3", amount: 1500)
transaction4 = testUser2.transactions.create!(author_id: testUser2.id, name: "Transaction 4", amount: 2000)

CategoryTransaction.create!(related_category: category1, related_transaction: transaction1)
CategoryTransaction.create!(related_category: category2, related_transaction: transaction2)
CategoryTransaction.create!(related_category: category3, related_transaction: transaction3)
CategoryTransaction.create!(related_category: category4, related_transaction: transaction4)
