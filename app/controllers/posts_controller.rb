class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post)
    @post = Post.new
  end

end
