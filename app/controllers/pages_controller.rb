class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :welcome

  def home
    @post = Post.new
    @parties = Party.all
    party_markers = @parties.geocoded.map do |party|
      {
        lat: party.latitude,
        lng: party.longitude,
        info_window: render_to_string(partial: "info_window", locals: { place: party }),
        image_url: helpers.asset_url("blue-marker.svg")
      }
    end

    spots = Spot.all
    spot_markers = spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window: render_to_string(partial: "info_window", locals: {place: spot }),
        image_url: helpers.asset_url("white-marker.svg")
      }
    end

    @all_markers = party_markers + spot_markers
  end

  def welcome
  end

  def useroptions
  end
end
