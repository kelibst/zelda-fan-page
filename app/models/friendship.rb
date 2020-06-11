class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :follower, class_name: 'User'

  scope :following, ->(user) { where(user_id: user.id) }
  scope :followers, ->(user) { where(follower_id: user.id) }
end
