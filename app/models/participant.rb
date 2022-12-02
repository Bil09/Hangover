class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :party
  has_many :messages
  attribute :status, default: false
end
