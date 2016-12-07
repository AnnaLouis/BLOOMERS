class BatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @batches = policy_scope(Batch)
  end

  def show
    @batch = Batch.find(params[:id])
  end

  def new
    @program = Program.find(params[:program_id])
    @batch = Batch.new
    @user = current_user
    @bloomers = Bloomer.select{ |bloomer| bloomer.user_id == current_user.id }
    @programs = Program.select{ |program| program.bloomer.user_id == current_user.id }
    authorize @program
  end

  def create
    @program = Program.find(params[:program_id])
    @batch = Batch.new(batch_params)
    @batch.program_id = @program.id
    authorize @program
    if @batch.save
      flash[:notice] = "Le batch \"#{@batch.name}\" du programme \"#{@program.name}\" a bien créé"
      redirect_to dashboard_path
    else
      render 'new'
    end
  end
private
  def batch_params
    params.require(:batch).permit(:batch_start, :batch_end, :name)
  end
end
