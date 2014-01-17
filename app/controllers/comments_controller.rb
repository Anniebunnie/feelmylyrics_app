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


end