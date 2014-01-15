class HomeController < ApplicationController
  before_filter :authenticate_user!

def index

@posts = Post.all
@comments = Comment.all


end
end