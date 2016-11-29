class StartupsController < ApplicationController
  def show
    @startup = Startup.find(params[:id])
    authorize @startup
  end

  def new
    @startup = Startup.new
    authorize @startup
  end

  def create
    @startup = Startup.new(startup_params)
    @startup.user = current_user
    authorize(@startup)
    if @startup.save
      redirect_to startup_path(@startup)
    else
      render 'new'
    end
  end

private

  def startup_params
    params.require(:startup).permit(:name, :description, :short_description, :date_creation, :twitter_account, :website)
  end
end
