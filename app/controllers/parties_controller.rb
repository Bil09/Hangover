class PartiesController < ApplicationController
  def new
    @party = Party.new
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      { lat: party.latitude, lng: party.longitude }
    end
  end

  def create
    @party = Party.new address: params[:address]
    @party.user = current_user
    if @party.save
      redirect_to new_party_participant_path(@party)
    else
      render :new, :unproccesable_entity
    end
  end

  private

  def party_params
    params.require(:party).permit(:address)
  end
end
