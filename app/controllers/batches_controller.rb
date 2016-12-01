class BatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @batches = policy_scope(Batch)
  end

  def show
    @batch = Batch.find(params[:id])
  end

  def new
    @batch = Batch.new
    @program = Program.find(params[:program_id])
    authorize @batch
  end

  def create
    @program = Program.find(params[:program_id])
    @batch = Batch.new(batch_params)
    @batch.program_id = @program.id
    authorize @batch
    if @batch.save
      redirect_to batches_path
    else
      render 'new'
    end
  end
private
  def batch_params
    params.require(:batch).permit(:batch_start, :batch_end, :name)
  end
end
