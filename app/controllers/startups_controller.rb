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
    @startup = Startup.new(params[:id])
  end

  def edit

  end

private

  def startup_params
    params.require(startup).require(:create, :edit)
  end
end
