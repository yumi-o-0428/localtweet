class User < ApplicationRecord
  has_many :tweets
  has_many :favorites
  has_many :fav_tweets, through: :favorites, source: :tweet

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password,{presence: true,uniqueness: true}
  mount_uploader :image_name, ImageUploader
end
