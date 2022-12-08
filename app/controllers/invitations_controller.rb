class InvitationsController < ApplicationController

  def new
    @invitation = Invitation.new
    if params[:query].present?
      @users = User.where("email ILIKE ?", "%#{params[:query]}%")
    else
      @users = User.all
    end
  end

  def create
    hash = invitation_params
    users = hash[:user_ids]
    users.each do |friend|
      current_user.add_friend User.find friend
    end

    redirect_to root_path
  end

  private

  def invitation_params
    params.require(:invitation).permit(user_ids: [])
  end
end
