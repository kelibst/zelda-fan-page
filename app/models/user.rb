class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :opinions, dependent: :destroy
  has_many :comments, dependent: :destroy
  validate :picture_size

  has_many :friendships, dependent: :destroy
  has_many :followers, class_name: 'Friendship', foreign_key: 'follower_id', dependent: :destroy

  validates :first_names, presence: true, length: { in: 3..200 }
  validates :last_name, presence: true, length: { in: 3..100 }

  mount_uploader :photo, ProfileImageUploader
  mount_uploader :cover_image, ProfileImageUploader

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  def picture_size
    if photo.size > 2.megabytes || cover_image.size > 2.megabytes
      errors.add(:photo, "should be less than 5Mb")
    end
  end
end
