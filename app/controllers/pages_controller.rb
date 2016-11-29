class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def map
    @bloomers = Bloomer.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@bloomers) do |bloomer, marker|
      marker.lat bloomer.latitude
      marker.lng bloomer.longitude
      # marker.infowindow render_to_string(partial: "/bloomers/map_box", locals: { flat: bloomer })
    end

  end


end
