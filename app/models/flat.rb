class Flat < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader

  belongs_to :category
  belongs_to :user
  belongs_to :home_type
  belongs_to :room_type

  validates :title, presence: true
  #validates :title, length: { in: 10..50 }
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

  # validates :user_id, uniqueness: true

end
