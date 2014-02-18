class HomeController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = current_user

# sort_by = params[:sort_by] || 'id'

		@users = User.all
		@posts = Post.order("created_at desc")
		@comments = Comment.all
		@songs = Song.all

	end

	def shoot_mail
		if current_user 
			UserMailer.welcome_user(current_user).deliver
		end
		redirect_to root_path
	end
end