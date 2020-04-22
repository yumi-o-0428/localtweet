class Tweet < ApplicationRecord
  belongs_to :user
  acts_as_taggable


  validates :spa_name,presence: true
  validates :image,presence: true
  validates :spa_name,presence: true
  validates :spring_quality,presence: true
  validates :area,presence: true
  mount_uploader :image, ImageUploader
end
