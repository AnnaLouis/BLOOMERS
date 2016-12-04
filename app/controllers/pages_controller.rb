class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :map ]

  def home
    bloomers = Bloomer.all
    @three_random_bloomers = bloomers.order("RANDOM()").limit(3)
  end

  def map
    @bloomers = Bloomer.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@bloomers) do |bloomer, marker|
      marker.lat bloomer.latitude
      marker.lng bloomer.longitude
      marker.infowindow "<h2>#{bloomer.name}</h2> <h3>#{bloomer.category}</h3><h4><i class=\"fa fa-hashtag\" aria-hidden=\"true\"></i> #{bloomer.speciality}</h4>"
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
    end
  end

  def startup_dashboard
    @user = current_user
    @candidatures = Candidature.all.select {|candidature| candidature.startup.user_id = @user.id }
    @startups = Startup.all.select {|startup| startup.user_id = @user.id }
  end

  def dashboard
    @user = current_user
    @startups = Startup.select{ |startup| startup.user_id == current_user.id}
    @bloomers = Bloomer.select{ |bloomer| bloomer.user_id == current_user.id }
  end

end
