class Participent < ApplicationRecord
  belongs_to :user
  belongs_to :party
  has_many :messages
end
