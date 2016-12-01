class CandidaturesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
  def index
    @candidatures = policy_scope(Candidature)
  end

  def show
    @candidature = Candidature.find(params[:id])
    authorize @candidature
  end

  def new
    @candidature = Candidature.new
    @program = Program.find(params[:program_id])
    authorize @candidature
  end

  def create
    @program = Program.find(params[:program_id])
    @candidature = Candidature.new(candidature_params)
    @candidature.program_id = @program.id
    authorize @candidature
      if @candidature.save
        redirect_to candidatures_path
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
    params.require(:candidature).permit(:team, :your_problem, :your_solution, :your_market, :phone_number, :question_incubation)
  end
end


