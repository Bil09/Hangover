class Party < ApplicationRecord
  belongs_to :user
  has_many :participants
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
