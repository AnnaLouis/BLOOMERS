class ProgramsController < ApplicationController

  def show
    @program = Program.find(params[:id])
    authorize @program
  end

  def new
    @program = Program.new
    @bloomers = current_user.bloomers.order(:name)
    authorize @program
  end

  def create
    @program = Program.new(program_params)
    authorize @program
    if @program.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def program_params
     params.require(:program).permit(:name, :short_description, :description, :duration, :price, :equity, :candidature_open, :candidature_close, :individual_coaching, :collective_coachin, :ecosystem, :advantages, :selection_criterias, :bloomer_id)
  end
end
