class Rental < ApplicationRecord
  belongs_to :user #:renter, class_name: "User"
  belongs_to :item
  monetize :price_cents
end
