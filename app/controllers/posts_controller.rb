class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post)

    if params[:query].present?
    @posts = Post.where("title ILIKE :query OR synopsis ILIKE :query, query:",
    "%#{params[:query]}%")
    else
      @posts = policy_scope(Post)
    end
    #,description:,category:,user_id:

    @post = Post.new
    @posts = Post.all

  end

end

# questions to ask ? what if i want to search a user_id

