class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      { lat: party.latitude, lng: party.longitude }
    end
  end
end
