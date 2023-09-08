class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = Profile.find(params[:id])
    authorize(@profile)
    @received_messages = current_user.chatrooms.map { |chatroom| chatroom.messages.where.not(user: current_user) }
  end


end
