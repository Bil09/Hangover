class InvitationsController < ApplicationController

  def new
    @invitation = Invitation.new
  end

  def create
    friend = User.find_by(email: params[:email])
    if friend
      current_user.send_invitation friend
      redirect_to root_path
    else
      render :new, status: :bad_request
      flash[:error] = "No User with this email"
    end
  end
end
