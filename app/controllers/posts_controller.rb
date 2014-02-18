class PostsController < ApplicationController


	def index
	
		@posts = Post.all
		@users = User.all
		@comments = Comment.all
		@songs = Song.all

		@user = User.find(current_user.id)
			post = @user.posts
			comment = Comment.new(:comment => params[:comment])
			comment.save 
			post.comments << comment
			user.comments << comment
			redirect root_path
	end

	def new
		
		
	end

	def edit
		@post = Post.find(params[:id])
		@songs = Song.all
	end

	def show

		@user = current_user

		@posts = @user.posts

		@songs = @posts.songs

		@post = Post.create!({
			text: params[:text],
			user_id: current_user.id,
			artist: params[:artist],
			title: params[:title]
		})

		# direct_to => 'songs#index'
		@song = Song.create!({
			artist: params[:artist],
			title: params[:title],
			lyric: params[:snippet],
			post_id: params[:id]
		})


	end

	def destroy
		post = Post.find(params[:id])
		post.delete

		redirect_to root_path
	end

end

