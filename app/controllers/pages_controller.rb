class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :welcome

  def home
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      {
        lat: party.latitude,
        lng: party.longitude,
        info_window: render_to_string(partial: "info_window", locals: {party: party }),
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end

    # locations = Location.all
    # location_markers = locations.geocoded.map do |party|
    #   {
    #     lat: party.latitude,
    #     lng: party.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: {party: party }),
    #     image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
    #   }
    # end
    # @markers = @markers + location_markers
  end

  def welcome
  end
end
