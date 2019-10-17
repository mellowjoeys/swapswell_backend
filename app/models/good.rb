class Good < ApplicationRecord
  belongs_to :user
  has_many :photos

  has_many :reactions
  has_many :users, through: :reactions

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :status, presence: true
  validates :user_id, presence: true

end
