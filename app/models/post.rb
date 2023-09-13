class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_one_attached :audio_data

  # validates :title, presence: true
  validates :description, presence: true

  VALID_URL_REGEX = %r{\A(?:(?:http|https)://)?
                    (?:[\wZ]+(?::[\wZ]+)?@)?
                    (?:[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6})
                    (?::[0-9]{1,5})?
                    (?:/\S*)?\z}x
  validates_format_of :music_url, with: VALID_URL_REGEX, allow_blank: true, message: 'is not a valid URL', if: lambda {
                                                                                                                 audio_data.blank?
                                                                                                               }

  # validates :category, inclusion: { in: ["rock", "jazz", "blues", "hiphop", "rap"] }

  attr_accessor :attachment_url

  def liked_by_user?(user)
    likes.find_by(user:).present?
  end
end

# test
