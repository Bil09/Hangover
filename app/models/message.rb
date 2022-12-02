class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :participent
  validates :content, presence: true
end
