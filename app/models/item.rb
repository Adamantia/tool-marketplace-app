class Item < ApplicationRecord
  include PgSearch

  belongs_to :user #:owner, class_name: "User"
  has_many :rentals
  validates :rate, presence: true
  validates :make, presence: true
  validates :description, presence: true
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :picture, PictureUploader

  pg_search_scope :full_search,
    against: [ :make, :description, :location],
    using: {
      tsearch: { prefix: true }
    }

  after_validation :set_default_picture, if: :picture_missing?

  private

  def set_default_picture
    self.remote_picture_url = "https://res.cloudinary.com/dgznqxy1y/image/upload/v1546214081/image-placeholder.jpg"
  end

  def picture_missing?
    picture.blank?
  end
end
