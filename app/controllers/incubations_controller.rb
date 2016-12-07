class IncubationsController < ApplicationController

  def new
    @batch = Batch.find(params[:batch_id])
    @incubation = Incubation.new
    @candidatures = Candidature.select{ |candidature| candidature.status == "accepted" && candidature.program == @batch.program}
    @startups_accepted = []
    @candidatures.each do |candidature|
      @startups_accepted << candidature.startup
    end
    authorize @incubation
  end

  def create
    @incubation = Incubation.new(incubation_params)
    @batch = Batch.find(params[:batch_id])
    @incubation.batch = @batch
    authorize @incubation
    if @incubation.save
      flash[:notice] = "La startup #{@incubation.startup.name} a été rajouté à la promotion #{@incubation.batch.name}"
      redirect_to dashboard_path
    else
      flash[:alert] = "Vous n'avez pas sélectionné de startup pour la promotion #{@incubation.batch.name}"
      render :new
    end
  end

  def incubation_params
     params.require(:incubation).permit(:startup_id, :comments)
  end
end
