# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tagging.delete_all
Post.delete_all
Tag.delete_all 
Category.delete_all
User.delete_all

# create will immediately persist the record to the DB
tag_js = Tag.create(name: "javascript")
tag_react = Tag.create(name: "react")
tag_ruby = Tag.create(name: "ruby")
tag_rails = Tag.create(name: "rails")

cat_prg = Category.create(
    name: "Programming"
)
cat_c = Category.create(
    name: "C"
)
cat_j = Category.create(
    name: "Java"
)

rc = User.create(
    email: "ramachandran.kulo@gmail.com",
    password: "12345678",
    password_confirmation: "12345678"
)
ramu = User.create(
    email: "ramu.kulo@gmail.com",
    password: "12345678",
    password_confirmation: "12345678"
)

10.times do |i|
    Post.create(
        title: "Post #{i}",
        body: "Post #{i} goes here...",
        user:  i % 2 == 0 ? rc : ramu,
        published: true,
        tags: i % 2 == 0 ? [tag_rails, tag_js]: [tag_ruby, tag_react],
        category_id: i % 2 == 0 ? cat_j.id : cat_prg.id
    )end