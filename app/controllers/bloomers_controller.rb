class BloomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bloomers = policy_scope(Bloomer)
  end

  def show
    @bloomer = Bloomer.find(params[:id])
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
