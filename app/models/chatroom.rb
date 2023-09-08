class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy

  def last_messages(current_user)
    messages.where.not(user: current_user)
  end
end
