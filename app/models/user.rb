class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  has_many :goods

  has_many :reactions
  has_many :goods, through: :reactions
end
