# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.delete_all
Tag.delete_all 
Category.delete_all

# create will immediately persist the record to the DB
Tag.create(name: "javascript")
Tag.create(name: "react")
Tag.create(name: "ruby")
Tag.create(name: "rails")

cat_prg = Category.create(
    name: "Programming"
)
cat_c = Category.create(
    name: "C"
)
cat_j = Category.create(
    name: "Java"
)

10.times do |i|
    Post.create(
        title: "Post #{i}",
        body: "Post #{i} goes here...",
        published: true,
        category_id: i % 2 == 0 ? cat_j.id : cat_prg.id
    )end