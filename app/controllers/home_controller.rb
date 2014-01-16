class HomeController < ApplicationController
  before_filter :authenticate_user!

def index

sort_by = params[:sort_by] || 'id'

@users = User.all
@posts = Post.all
@comments = Comment.all
@songs = Song.all

end
end