class Chatroom < ApplicationRecord
  belongs_to :party
  has_many :messages
  has_many :participants
end
