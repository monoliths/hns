class Location < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :altitude, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
