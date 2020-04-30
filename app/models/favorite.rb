class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  acts_as_taggable

  validates :user_id, {presence: true}
  validates :tweet_id, {presence: true}
end
