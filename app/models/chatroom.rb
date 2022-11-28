class Chatroom < ApplicationRecord
  belongs_to :party
  has_many :messages
end
