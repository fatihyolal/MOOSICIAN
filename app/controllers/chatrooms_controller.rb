class ChatroomsController < ApplicationController
  # get /profiles/:id/chatroom
  def show
    # @chatting_to = User.find(params[:receiver])
    # raise
    # @chatroom = Chatroom.find_by(user_1: current_user.id, user_2: @chatting_to.id) || (Chatroom.find_by(user_1: @chatting_to.id, user_2: current_user.id))
    # # @chatroom = Chatroom.create(user_1: current_user.id, user_2: params[:id]) if @chatroom.nil?
    # if @chatroom.nil?
    #   @chatroom = Chatroom.create(user_1: current_user.id, user_2: params[:receiver]) if @chatroom.nil?
    # else
    # end
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom

  end

  def create
    @chatting_to = User.find(params[:receiver])
    @chatroom = Chatroom.create(user_1: current_user.id, user_2: params[:receiver])
    authorize @chatroom
    redirect_to chatroom_path(@chatroom)
  end

  def index

    @messages = policy_scope(Message)

    # @last_messages = {}
    # @messages.each do |message|
    #   @last_messages[message.chatroom] = message
    # end
    @chatrooms = policy_scope(Chatroom)
    @last_messages = []
    # raise
    @chatrooms.each do |chatroom|
      @last_messages << chatroom.messages.last
    end
  end


end
