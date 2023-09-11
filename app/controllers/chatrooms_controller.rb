class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end

  def index
    @messages = policy_scope(Message)

    @last_messages = {}
    @messages.each do |message|
      @last_messages[message.chatroom] = message
    end
  end
end
