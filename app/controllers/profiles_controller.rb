class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = Profile.find(params[:id])
    authorize(@profile)
    @received_messages = current_user.chatrooms.map { |chatroom| chatroom.messages.where.not(user: current_user) }
    @posts = Post.where(user: @profile.user)
    @comment = Comment.new
    @chatrooms = policy_scope(Chatroom)
    @last_messages = []
    # raise
    @chatrooms.each do |chatroom|
      @last_messages << chatroom.messages.last unless chatroom.messages.last.user == current_user
    end
  end


end
