class ParticipantsController < ApplicationController
  def new
    @friends = current_user.friends
    @party = Party.find(params[:party_id])
    @participant = Participant.new
  end

  def create
    participants = participant_params[:friend_ids]
    participants.each do |participant|
      Participant.create user: User.find(participant), party_id: params[:party_id]
    end
    redirect_to root_path
  end

  private

  def participant_params
    params.require(:participant).permit(friend_ids: [])
  end
end
