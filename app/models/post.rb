class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  # validates :title, presence: true
  # validates :description, presence: true

  # validates :category, inclusion: { in: ["rock", "jazz", "blues", "hiphop", "rap"] }
end
