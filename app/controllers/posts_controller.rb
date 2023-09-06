class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post)
    @posts = Post.all
  end

end
