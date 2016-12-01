class CandidaturesController < ApplicationController
  def index
    @candidature = Candidature.all
  end

  def show
    @candidature = candidature.find(params[:id])
  end

  def new
    @candidature = candidature.new
  end

  def create
    @candidature = candidature.new(candidature_params)
    @candidature.user = current_user
      if @candidature.save
        redirect_to candidature_path(@candidature)
      else
        render 'new'
      end
  end

  def decline?
    status = "declined"
  end

  def accept?
    status = "refused"
  end

private

  def candidature_params
    params.require(:candidature).permit(:team, :short_description, :your_problem, :your_solution, :your_market, :description, :phone_number)
  end
end


