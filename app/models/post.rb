class Post < ActiveRecord::Base
	attr_accessible :lyric, :mood_id, :song_id, :text, :user_id, :song

	belongs_to :song
	belongs_to :user
	has_many :commenters, through: :comments, source: :user
	has_many :comments


	def user_comments(commenter, comment)
		self.comments << comment
		commenter = comment.user
	end

end
