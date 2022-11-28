class User < ApplicationRecord
  has_many :party
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
