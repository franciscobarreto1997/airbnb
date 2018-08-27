class Flat < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  # validates :user_id, uniqueness: true
  # validates :category_id, uniqueness: true


end
