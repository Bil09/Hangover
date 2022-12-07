class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @post = Post.new
    @parties = Party.all
    @markers = @parties.geocoded.map do |party|
      {
        lat: party.latitude,
        lng: party.longitude,
        info_window: render_to_string(partial: "info_window", locals: {party: party })
      }
    end
  end
end
