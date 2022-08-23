class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :name, uniqueness: true, presence: true
  validates :category, :location, presence: true
  validates :rating, presence: true
end
