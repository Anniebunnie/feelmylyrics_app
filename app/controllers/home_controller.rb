class HomeController < ApplicationController
  before_filter :authenticate_user!

def index

# sort_by = params[:sort_by] || 'id'

@users = User.all
@posts = Post.order("created_at desc")
@comments = Comment.all
@songs = Song.all

end
end