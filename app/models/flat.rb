class Flat < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
  
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # validates :latitude, presence: true
  # validates :longitude, presence: true
  # validates :user_id, uniqueness: true

end
