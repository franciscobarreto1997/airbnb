class Flat < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :home_type
  belongs_to :room_type

  #validates :title, length: { in: 10..50 }
  validates :title, :description, :price, :address, presence: true
  validates_associated :room_type, :home_type

  # validates :user_id, uniqueness: true

end
