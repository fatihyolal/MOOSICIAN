class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
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

  def destroy
    @post = Post.find_by(id: params[:id])

    if @post
      @post.destroy
      flash[:success] = 'Post deleted'
    else
      flash[:error] = 'Post not found'
    end

    redirect_to posts_path, status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :category, :attachment)
  end
end
