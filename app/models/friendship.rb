class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :follower, class_name: 'User'

  scope :followers, ->(user) { where(follower_id: user.id) }
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
