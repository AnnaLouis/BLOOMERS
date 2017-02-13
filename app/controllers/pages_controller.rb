class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :map ]

  def home
    bloomers = Bloomer.all
    @three_random_bloomers = bloomers.order("RANDOM()").limit(3)
    @bloomers = Bloomer.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@bloomers) do |bloomer, marker|
      marker.lat bloomer.latitude
      marker.lng bloomer.longitude
      marker.infowindow render_to_string(:partial => "/shared/infowindow", :locals => { :bloomer => bloomer})
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

  def map
    @bloomers = Bloomer.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@bloomers) do |bloomer, marker|
      marker.lat bloomer.latitude
      marker.lng bloomer.longitude
      marker.infowindow render_to_string(:partial => "/shared/infowindow", :locals => { :bloomer => bloomer})
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

  def dashboard
    @booking = Booking.new
    @startups = current_user.startups
    @bloomers = current_user.bloomers
    if current_user.startup_admin
      @favorites = Favorite.select{ |favorite| favorite.user == current_user && favorite.hidden == false }
      @incubations = Incubation.select{ |incubation| incubation.startup.user == current_user }
    end
    if current_user.startup_admin
      @candidatures = Candidature.select{ |candidature| candidature.startup.user == current_user }
    elsif current_user.bloomer_admin
      @candidatures = Candidature.select{ |candidature| candidature.program.bloomer.user == current_user }
    end
  end

  def newdashboard
    @booking = Booking.new
    if current_user.startup_admin
      @startups = current_user.startups
      @favorites = Favorite.select{ |favorite| favorite.user == current_user && favorite.hidden == false }
      @incubations = Incubation.select{ |incubation| incubation.startup.user == current_user }
      @candidatures = Candidature.select{ |candidature| candidature.startup.user == current_user }
      @reviews = Review.select { |review| review.user == current_user }
    elsif current_user.bloomer_admin
      @bloomers = current_user.bloomers
      @candidatures = Candidature.select{ |candidature| candidature.program.bloomer.user == current_user }
    end
  end

end
