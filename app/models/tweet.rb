class Tweet < ApplicationRecord
  acts_as_taggable
  validates :spa_name,presence: true
  mount_uploader :image, ImageUploader
end
