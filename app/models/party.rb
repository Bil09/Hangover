class Party < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_one :chatroom # party.chatroom
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
