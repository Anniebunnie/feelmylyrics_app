class ProfilesController < ApplicationController

def index
	@users = User.all
	@user = User.find(current_user.id)
			post = @user.posts
	
end

def show
	@user = User.find(params[:id])
	@posts = @user.posts
	# @posts = Post.where(user_id: @user.id)
	# @comments = Post.comments.where(post_id = @post.id)

end

end