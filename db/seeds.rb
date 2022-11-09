puts "🌱 Seeding spices..."


puts "Destroying old data ,,,,,,,,,,,"
User.destroy_all
Todo.destroy_all

# Seed your database here

puts "Seed users,,,,,,,,..."

user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
)

todo = Todo.create(
    text: "Coding some stuff",
    category: "Coding",
    done: false,
    user_id: user.id
)

puts "✅ Done seeding!"
