class StartupsController < ApplicationController
  def show
    @startup = Startup.find(params[:id])
    @candidatures = Candidature.all.select { |candidature| candidature.startup_id == @startup.id }
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
      flash[:notice] = "Le startup #{@startup.name} a bien été créée"
      StartupMailer.creation_confirmation(@startup).deliver_now
      redirect_to dashboard_path
    else
      flash[:alert] = "Oupsi ! Un champ a mal été rempli"
      render 'new'
    end
  end

  def edit
    @startup = Startup.find(params[:id])
    authorize(@startup)
  end

  def update
   @startup = Startup.find(params[:id])
   @startup.update(startup_params)
   authorize(@startup)
   redirect_to dashboard_path
  end

private

  def startup_params
    params.require(:startup).permit(:name, :description, :short_description, :date_creation, :twitter_account, :website, :team, :your_problem, :your_solution, :your_market, :phone_number, :logo, photos:[])
  end
end
