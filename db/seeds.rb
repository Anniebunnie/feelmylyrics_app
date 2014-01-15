# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


###Users##

# @john = User.new
# @john.name = "John"
# @john.email = "john@example.com"
# @john.password = "password"
# @john.save!

User.destroy_all
Post.destroy_all
Comment.destroy_all

u1 = User.create!(name: "John", email: "john@example.com", password: "111111111")
u2 = User.create!(name: "David", email: "david@example.com", password: "password")
# @david = User.new
# @david.name = "David"
# @david.email = "david@example.com"
# @david.password = "password"
# @david.save!

# @tina = User.new
# @tina.name = "Tina"
# @tina.email = "tina@example.com"
# @tina.password = "password"
# @tina.save!

# @christy = User.new
# @christy.name = "Christy"
# @christy.email = "christy@example.com"
# @christy.password = "password"
# @christy.save!

# @post = Post.new
# @post.text = "This is a test"
# @post.save!


p1 = Post.create!(text: "some text", user_id: u1.id)
c1 = Comment.create!(comment: "commenting", post_id: 7, user_id: 5)


blue = Post.create!(text: "I feel a little blue today", user_id: 5, song_id: 3)
comment = Comment.create!(comment: "do you wannabe my lover?", post_id: blue.id, user_id: 6)











