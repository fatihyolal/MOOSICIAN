class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post)
    @post = Post.new
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query OR username ILIKE :query"
      @posts = Post.joins(:user).where(sql_subquery, query: "%#{params[:query]}%")
    else
      @posts = policy_scope(Post)
    end
    @comment = Comment.new
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

# questions to ask ? what if i want to search a user_id
