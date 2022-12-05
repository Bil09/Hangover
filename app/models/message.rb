class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :participant
  has_one :user, through: :participant
  validates :content, presence: true
end
