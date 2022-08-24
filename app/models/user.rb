class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :restaurants
  validates :name, uniqueness: true, presence: true
  validates :address, :phone, presence: true
  validates :email, confirmation: true, presence: true
end