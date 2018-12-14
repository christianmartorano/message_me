# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{ username: "dart", password: "1234"},
        { username: "megaman", password: "1234"},
        { username: "cartman", password: "1234"},
        { username: "stan", password: "1234"},
        { username: "spiderman", password: "1234"},
        { username: "aquaman", password: "1234"}
  ])
