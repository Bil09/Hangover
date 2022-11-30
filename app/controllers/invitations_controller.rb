class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    friend = User.find_by(email: params[:email])
    current_user.send_invitation friend
    redirect_to root_path
  end
end
