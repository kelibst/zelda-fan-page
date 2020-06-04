class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :opinions, dependent: :destroy

  validates :first_names, presence: true, length: {in: 3..200}
  validates :last_name, presence: true, length: {in: 3..100}
end