class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post)
    @post = Post.new

    if params[:query].present?
    @posts = Post.where("title ILIKE :query OR synopsis ILIKE :query, query:",
    "%#{params[:query]}%")
    else
      @posts = policy_scope(Post)
    end
    #,description:,category:,user_id:


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
    authorize @post
  end

  private
  def post_params
    params.require(:post).permit(:description)
  end

end

# questions to ask ? what if i want to search a user_id
