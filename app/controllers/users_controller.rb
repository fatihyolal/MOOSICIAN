class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize(@user)
    @received_messages = current_user.chatrooms.map { |chatroom| chatroom.messages.where.not(user: current_user) }
  end

end
