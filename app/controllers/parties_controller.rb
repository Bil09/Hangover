class PartiesController < ApplicationController
  def new
    @party = Party.new
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      { lat: party.latitude, lng: party.longitude }
    end
  end

  def create
    @party = Party.new party_params
    @party.user = current_user
    if @party.save
      Participant.create user: current_user, party: @party, status: true
      @party.chatroom = Chatroom.create party: @party, name: @party.name
      redirect_to new_party_participant_path(@party)
    else
      render :new, :unproccesable_entity
    end
  end

  def new_homeparty
    @party = Party.new
    @parties = Party.all
  end

  private

  def party_params
    params.require(:party).permit(:address, :name, :start_time, :description)
  end


end
