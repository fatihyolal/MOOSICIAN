class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_one :profile, dependent: :destroy

  has_one_attached :photo
  after_create :create_profile
  # validates :username, presence: true, uniqueness: true
  # validates :bio, presence: true
  def username_with_at
    "@" + username
  end

  def create_profile
    Profile.create(
      first_name: self.first_name,
      last_name: self.last_name,
      username: self.username,
      user: self
    )
  end
end
