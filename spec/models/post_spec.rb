require 'spec_helper'

describe Post do
	describe "User will create a post" do 
		before do 
			@user = User.new
			@user.name = "Michael Jackson"
			@user.email = "aj.kim84@gmail.com"
			@user.password = "password"
			@user.save!
			@song = Song.new
			@user.write_post("Not my son", @song)
		end
		it "will associate a post to a user" do
			@user.posts.last.text.should ==  "Not my son"
		end
		it "has the right song" do
            @user.posts.last.song.should == @song
		end
	end
	# describe "User will submit mood and search" do 
	# 	before do 
	# 		@deedoo = User.new
	# 		@deedoo.name = "Tweeter Dee Doo"
	# 		@deedoo.email = "aj.kim84@gmail.com"
	# 		@deedoo.password = "password"
	# 		@deedoo.save!
	# 		@mood = Mood.new
	# 		@song = Song.new
	# 		@deedoo.submit_mood(@mood, @song)
	# 	end
	# 	it "will associate a post to a user" do
	# 		@deedoo.posts.last.mood.should == @mood
	# 	end
	# 	it "has the right mood" do
 #            @deedoo.posts.last.song.should == @song
	# 	end
	# end

	describe "User will comment on a post" do 
		before do 
			@aj = User.new
			@aj.name = "AJ Kim"
			@aj.email = "anniebunnie@gmail.com"
			@aj.password = "password"
			@aj.save!
			@john = User.new
			@john.name = "John"
			@john.email = "john@example.com"
			@john.password = "password"
			@john.save!
			@text = Post.create(text: "I'm feeling silly today")
			@song = Song.create(artist: "Red Hot Chili Peppers", title: "Californication")
			@text = @aj.write_post(@text, @song)
			@comment = Comment.create(comment: "I want to run away")
			@comment.user = @john
			@text.user_comments(@john, @comment)
		end
		it "will associate a commenter to a post" do
			@text.commenters.first.name.should == "John"
		end
		it "has a comment" do
            @text.comments.last.comment.should == "I want to run away"
		end
	end

end
	
