class Tweet < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  has_many :favorites
  has_many :fav_users, through: :favorites, source: :user
  

  validates :spa_name,presence: true
  validates :image,presence: true
  validates :spa_name,presence: true
  validates :spring_quality,presence: true
  validates :area,presence: true
  mount_uploader :image, ImageUploader
end
