class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post)
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      respond_to do |format|
        format.html { redirect_to posts_path }
        format.js
      end
    else
      @posts = Post.all
      render :index, status: :unprocessable_entity
    end
  end

end
