class Good < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :status, presence: true
  validates :user_id, presence: true

end
