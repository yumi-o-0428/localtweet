class Tweet < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  has_many :favorites
  has_many :fav_users, through: :favorites, source: :user
  
  validates :spa_name, :image, :spa_name, :spring_quality, :area, presence: true
  mount_uploader :image, ImageUploader
end
