class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :participant
  validates :content, presence: true
end
