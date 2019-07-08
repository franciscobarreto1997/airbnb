class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :home_type
  belongs_to :room_type

  #validates :title, length: { in: 10..50 }
  validates :title, :description, :price, :street, :city, :zip, :state, presence: true
  validates_associated :room_type, :home_type

  # validates :user_id, uniqueness: true

  def address
    [street, city, zip, state].compact.join(", ")
  end

  def address_changed?
    street_changed? || city_changed? || zip_changed? || state_changed?
  end
end
