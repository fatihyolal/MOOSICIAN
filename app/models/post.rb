class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_one_attached :audio_data

  # validates :title, presence: true
  validates :description, presence: true

  # validates :category, inclusion: { in: ["rock", "jazz", "blues", "hiphop", "rap"] }
  VALID_URL_REGEX = /\A(?:(?:http|https):\/\/)?
                    (?:[\wZ]+(?::[\wZ]+)?@)?
                    (?:[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6})
                    (?:\:[0-9]{1,5})?
                    (?:\/\S*)?\z/x
 validates_format_of :music_url, with: VALID_URL_REGEX, message: 'is not a valid URL'

#  validates_format_of :embed_url,
#                     :with => %r{
#                       ^(http|https)://
#                       [a-z0-9]+
#                       ([-.]{1}[a-z0-9]+)*
#                       \.[a-z]{2,5}
#                       (:[0-9]{1,5})?
#                       (/.*)?$
#                     }ix

#  attr_accessor :attachment_url

 def url_set_by_user?(user)
  self.music_url.find_by(user: user).present?
 end
 def embed_set_by_user?(user)
  self.embed_url.find_by(user: user).present?
 end

  def liked_by_user?(user)
    self.likes.find_by(user: user).present?
  end
end
