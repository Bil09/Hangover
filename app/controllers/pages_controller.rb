class PagesController < ApplicationController

  def home
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      { lat: party.latitude, lng: party.longitude }
    end
  end
end
