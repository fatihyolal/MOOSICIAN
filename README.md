Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
# create a new migration tto add reciever_id and asker_id
foreign_key: { to_table: :users }
rails g migration AddUserRefrencesToChatrooms
  add_reference :chatrooms :asker, foreign_key: { to_table: :users }
  add_reference :chatrooms :reciever, foreign_key: { to_table: :users }


class Chatrooms < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :receiver, class_name: "User"
end

class User < ApplicationRecord
  has_many :chatrooms_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id
end
