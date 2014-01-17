class CommentsController < ApplicationController

	def index
	end

	def new
		
	end

	def delete
	end

	def create

		Comment.create!(comment: params[:comment], user_id: current_user.id, post_id: params[:id]) 

		redirect '/'
		
	end

	def destroy
		comment = Comment.find(params[:id])
		# posts = Post.where(song_id: params[:id])
		# posts.update_all(song_id: nil)
		comment.delete

		redirect_to root_path
	end


end