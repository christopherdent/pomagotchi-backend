# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Chris", email: "christopherdent01@gmail.com")
User.create(name: "Guest", email: "guest@guest.com")
Pet.create(name: "Calvin", happiness: 10, weight: 10, age: 1, picture_url: "file:///C:/Users/chris/code/pom-main/pomagotchi/public/assets/pom.jpg", user_id: 1)
Pet.create(name: "Guest Pet", happiness: 10, weight: 10, age: 1, picture_url: "file:///C:/Users/chris/code/pom-main/pomagotchi/public/assets/pom.jpg", user_id: 2)
