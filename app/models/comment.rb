class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 200,
                                                too_long: '400 characters in comment is the maximum allowed.' }
  belongs_to :user
  belongs_to :opinion
end
