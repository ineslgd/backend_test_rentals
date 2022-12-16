class Mission < ApplicationRecord
  belongs_to :listing

  # Enum lets you declare an enum attribute where the values map to integers
  # in the database, but can be queried by name.
  enum mission_type: {first_checkin: 0, last_checkout: 1, checkout_checkin: 2}
  validates :date, :mission_type, :price, presence: true
end
