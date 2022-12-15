class Mission < ApplicationRecord
  belongs_to :listing
  has_many :bookings, dependent: :destroy
  has_many :reservation, dependent: :destroy
end
