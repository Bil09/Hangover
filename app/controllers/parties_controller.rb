class PartiesController < ApplicationController
  def new
    @party = Party.new
  end

  def create
    @party = Party.new party_params
    @party.user = current_user
    if @party.save
      redirect_to new_partecipants_path
    else
      render :new, :unproccesable_entity
    end
  end

  private

  def party_params
    params.require(:party).permit(:address)
  end
end
