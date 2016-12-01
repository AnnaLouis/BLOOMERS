class ProgramsController < ApplicationController

  def new
    @program = Program.new
    @bloomer = Bloomer.find(params[:bloomer_id])
    authorize @program
  end

  def create
    @program = Program.new(program_params)
    @bloomer = Bloomer.find(params[:bloomer_id])
    @program.bloomer = @bloomer
    authorize @program
    if @program.save
      redirect_to bloomer_path(@bloomer)
    else
      render :new
    end
  end

  private

  def program_params
     params.require(:program).permit(:name, :short_description, :description, :duration, :price, :equity, :candidature_open, :candidature_close, :individual_coaching, :collective_coachin, :ecosystem, :advantages, :selection_criterias)
  end
end
