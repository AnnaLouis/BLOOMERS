class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :map ]

  def home
  end

  def map
    @bloomers = Bloomer.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@bloomers) do |bloomer, marker|
      marker.lat bloomer.latitude
      marker.lng bloomer.longitude
      marker.infowindow "<h1>#{bloomer.name}</h1> <p>#{bloomer.category}"
      if bloomer.category == "Incubateur"
        marker.picture({
         :url => "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=I|04677D|000000",
         :width   => 32,
         :height  => 32
        })
      elsif bloomer.category == "Accélérateur"
        marker.picture({
         :url => "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=A|FEC300|000000",
         :width   => 32,
         :height  => 32
        })
      elsif bloomer.category == "Coworking"
        marker.picture({
         :url => "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=C|13CE66|000000",
         :width   => 32,
         :height  => 32
        })
      end
      # if bloomer.category == "Incubateur"
      #   marker.picture({
      #     "url" => "http://www.clker.com/cliparts/n/T/j/m/1/z/map-pin-green-hi.png",
      #     "width" =>  29,
      #     "height" => 32
      #     })
      # elsif bloomer.category == "Accélérateur"
      #   marker.picture({
      #     "url" => "http://www.clker.com/cliparts/W/0/g/a/W/E/map-pin-red-hi.png",
      #     "width" =>  29,
      #     "height" => 32
      #     })
      # else bloomer.category == "Coworking"
      #   marker.picture({
      #     "url" => "http://www.clker.com/cliparts/G/R/Y/M/S/g/map-pin-yellow-hi.png",
      #     "width" =>  29,
      #     "height" => 32
      #     })
      # end
    end
  end

  def dashboard
    @bloomers = Bloomer.select{ |bloomer| bloomer.user_id == current_user.id }
  end


end
