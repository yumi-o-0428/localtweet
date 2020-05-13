class User < ApplicationRecord
  has_secure_password
  has_many :tweets
  has_many :favorites
  has_many :fav_tweets, through: :favorites, source: :tweet

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }
  mount_uploader :image_name, ImageUploader
end
