class Chatroom < ApplicationRecord
  belongs_to :party # chatroom.party => Party.find(chatroom.party_id)
  has_many :messages
  has_many :participants
end
