class PostsController < ApplicationController

	def index
		@posts = Post.all
		@users = User.all
		@comments = Comment.all
		@songs = Song.all
	end

	def new
		
		
	end

	def edit
		@songs = Song.all
	end

	def show

		@user = current_user

		@post = Post.create!{
			text = params[:my_feelings],
			user_id = current_user.id,
			artist = params[:artist],
			title = params[:title]
		}

		# direct_to => 'songs#index'
		@song = Song.create!{
			artist = params[:artist],
			title = params[:title],
			lyric = params[:lyrics] || params[:snippet]
			post_id = params[:id]
		}


	end

end

