class User < ApplicationRecord
  has_many :party
  has_one_attached :photo
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :invitations
  has_many :pending_invitations, -> { where confirmed: false }, class_name: 'Invitation', foreign_key: "friend_id"

  def friends
    friends_i_sent_invitation = Invitation.where(user_id: id, confirmed: true).pluck(:friend_id)
    friends_i_got_invitation = Invitation.where(friend_id: id, confirmed: true).pluck(:user_id)
    ids = friends_i_sent_invitation + friends_i_got_invitation
    User.where(id: ids)
  end

  def friend_with?(user)
    Invitation.confirmed_record?(id, user.id)
  end

  def send_invitation(user)
    Invitation.create(user: self, friend_id: user.id)
  end

  def add_friend(user)
    Invitation.create(user: self, friend_id: user.id, confirmed: true)
  end
end
