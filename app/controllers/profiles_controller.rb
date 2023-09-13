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
      last_message = chatroom.messages.last
      @last_messages << last_message if last_message && last_message.user == current_user
    end
  end
end
