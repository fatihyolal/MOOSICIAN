class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      sql_subquery = "user_1 = :query OR user_2 = :query"
      user.admin? ? scope.all : scope.where(sql_subquery, query: user.id)
    end
  end

  def update?
    record.user == user
  end

  def destroy
    record.user == user
  end

  def show?
    # users = record.messages.map { |message| message.user }
    # users.include?(user)
    record.user_1 == user.id || record.user_2 == user.id
  end

  def create?
    true
  end

  ###

  # unless @chatroom.messages.where(user_id: current_user.id).exists?
  #   #  flash[:alert] = "No permission to access this chatroom"
  #   #  redirect_to root_path
  #    @chatroom = Chatroom.new
  #    @chatroom.save
  #    redirect_to chatroom_path(@chatroom)
  #   end

  ###
end
