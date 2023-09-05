class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      respond_to do |format|
        format.html { redirect_to posts_path }
        format.js
      end
    else
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :category)
  end
end
