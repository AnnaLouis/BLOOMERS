class BloomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bloomer = Bloomer.all
  end

  def show
    @bloomer = Bloomer.find(params[:id])
    authorize @bloomer
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
    params.require(:bloomer).permit(:name, :city, :country, :category, :website, :email, :twitter_account, :description, :address, :specialty, :date_creation, :photos[])
  end

end
