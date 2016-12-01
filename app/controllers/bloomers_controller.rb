class BloomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bloomers = policy_scope(Bloomer)
    @search_bloomer = Bloomer.new
    # Je crée les spécialités Bloomers
    @specialities = []
    @bloomers.each do |bloomer|
      @specialities << bloomer.speciality
    end
    @specialities.uniq!
    # Je fais la fonction recherche
    if params[:search] && params[:search][:category] != ""
      @bloomers = @bloomers.where(category: params[:search][:category])
    end
    if params[:search] && params[:search][:city] != ""
      @bloomers = @bloomers.where(city: params[:search][:city])
    end
  end

  def show
    @bloomer = Bloomer.find(params[:id])
    @three_random_startups = @bloomer.startups.order("RANDOM()").limit(3)
    @programs = @bloomer.programs
    @first_program = @programs[0]
    @second_program = @programs[1]
    @third_program = @programs[2]
    authorize @bloomer
    @alert_message = "Vous êtes sur la page de : #{@bloomer.name}"
    @bloomer_coordinates = { lat: @bloomer.latitude, lng: @bloomer.longitude }
  end

  def new
    @bloomer = Bloomer.new
    @bloomer.user = current_user
    authorize @bloomer
  end

  def create
    @bloomer = Bloomer.new(bloomer_params)
    @bloomer.user = current_user
    authorize @bloomer
    if @bloomer.save
      redirect_to bloomer_path(@bloomer)
    else
      render :new
    end
  end

  # def edit
  #   authorize @bloomer
  # end

  # def update
    # authorize @bloomer
  # end

private

  def bloomer_params
     params.require(:bloomer).permit(:name, :city, :category, :website, :email, :twitter_account, :description, :address, :speciality, :date_creation, photos:[])
  end

 end
