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
Song.destroy_all

#example 1

u1 = User.create!(name: "John", email: "john@example.com", password: "111111111")
s1 = Song.create!({
			title: "She loves me",
			artist: "Beatles",
			verse: "Yeah yeah yeahhhh",
			photo: "http://static.musixmatch.com/images/albums/4/0/2/7/8/9/25987204.jpg"
		})
p1 = Post.create!({
			song_id: s1.id,
			lyric: "Yeah yeah yeahhhh",
			user_id: u1.id,
			text: "ooh! an eyelash!  lets see... i shall now make a wish"
		})
c1 = Comment.create!({
			comment: "yeah yeah yeah!!!!",
			post_id: p1.id,
			user_id: u1.id
		})

#example 2

u2 = User.create!(name: "David", email: "david@example.com", password: "111111111")
s2 = Song.create!({
			title: "Sometimes",
			artist: "Britney Spears",
			verse: "sometimes i run",
			photo: "http://static.musixmatch.com/images/albums/4/0/2/7/8/9/25987204.jpg"
		})
p2 = Post.create!({
			song_id: s2.id,
			lyric: "sometimes i run",
			user_id: u2.id,
			text: "i think i'm a commitment phobe..."
		})
c2 = Comment.create!({
			comment: "hmm...let's work on that david",
			post_id: p2.id,
			user_id: u2.id
		})


#example 3
u3 = User.create!(name: "Christy", email: "christy@example.com", password: "111111111")
s3 = Song.create!({
			title: "Bohemian Rhapsody",
			artist: "Queen",
			verse: "mama, just killed a man...",
			photo: "http://static.musixmatch.com/images/albums/4/0/2/7/8/9/25987204.jpg"
		})
p3 = Post.create!({
			song_id: s3.id,
			lyric: "mama, just killed a man...",
			user_id: u3.id,
			text: "so tonight i told the cops a lie.  i hope everything will be okay"
		})
c3 = Comment.create!({
			comment: "do you want this info to be public?",
			post_id: p3.id,
			user_id: u3.id
		})

#example 4
u4 = User.create!(name: "Tina", email: "tina@example.com", password: "111111111")
s4 = Song.create!({
			title: "run",
			artist: "snow patrol",
			verse: "light up, light up",
			photo: "http://static.musixmatch.com/images/albums/4/0/2/7/8/9/25987204.jpg"
		})
p4 = Post.create!({
			song_id: s4.id,
			lyric: "light up, light up",
			user_id: u4.id,
			text: "thinking about what i should do tonight...."
		})
# u4.posts << p4

c4 = Comment.create!({
			comment: "i hope you live in CA, WA, CO or OR...",
			post_id: p4.id,
			user_id: u4.id
		})








