class LikesController < ApplicationController
  def create
    @like = Like.new
    @post = Post.find(params[:post_id])
    @like.post = @post
    @like.user = current_user
    authorize @like
    if @like.save
      redirect_to root_path
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  def destroy
    @like = Like.find(params[:id])
    authorize @like
    if @like.destroy
      redirect_to root_path
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end
end
