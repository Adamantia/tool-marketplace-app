class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :items # :owned_items, class_name: "Item"
  has_many :rentals
  has_many :rented_items, through: :rentals, source: :item


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
