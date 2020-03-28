class Tweet < ApplicationRecord
  validates :spa_name,presence: true
  mount_uploader :image, ImageUploader
end
