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

  def show
    @post = Post.find(params[:id])
  end

  def create
    #  result = Cloudinary::Uploader.upload(params[:post][:attachment])
     @post = Post.new(post_params)
    #  @post.attachment_url = result['secure_url']
     @post.user = current_user
     if @post.save
       @posts = policy_scope(Post)

      @comment = Comment.new
      respond_to do |format|
        format.html { redirect_to posts_path }
        format.js
      end
    else
      @posts = policy_scope(Post)
      render :index, status: :unprocessable_entity
    end
    authorize @post
  end

  private
  def post_params
    params.require(:post).permit(:description, :audio_data,)
  end
end
