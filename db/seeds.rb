User.destroy_all

User.create(username: "sarahpai", password: "123", email: "spai@gmail.com", full_name: "sarah pai")
puts "all seeded"