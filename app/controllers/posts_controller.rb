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
    get_last_messages
    respond_to do |format|
      format.html
      format.text { render partial: "posts/list", locals: { posts: @posts }, formats: [:html] }
    end


  end

  def show
    @post = Post.find(params[:id])
    authorize @post
  end

  def create
    #  result = Cloudinary::Uploader.upload(params[:post][:attachment])
    @post = Post.new(post_params)
    #  @post.attachment_url = result['secure_url']
    @post.user = current_user
    get_last_messages
    if @post.save
      @posts = policy_scope(Post)
      @comment = Comment.new
      respond_to do |format|
        format.html { redirect_to posts_path }
        format.js
      end
    else
      @comment = Comment.new
      @received_messages = current_user.chatrooms.map { |chatroom| chatroom.messages.where.not(user: current_user) }
      @posts = policy_scope(Post)
      render :index, status: :unprocessable_entity
    end
    authorize @post
  end

  private

  def post_params
    params.require(:post).permit(:description, :audio_data, :music_url, :embed_url)
  end

  def get_last_messages
    @chatrooms = policy_scope(Chatroom)
    @last_messages = []
    @chatrooms.each do |chatroom|
      @last_messages << chatroom.messages.last unless chatroom.messages.last.user == current_user
    end
  end

end
