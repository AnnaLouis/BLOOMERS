class BloomersController < ApplicationController

  def index
    @bloomer = Bloomer.all
  end

  def show
    @bloomer = Bloomer.find(params[:id])

  end

  def new
    @bloomer = Bloomer.new
  end

  def create
    @bloomer = Bloomer.new(bloomer_params)
    # @bloomer.user == user
    @bloomer.save
  end

  # def edit
  # end

  # def update
  # end

private

  def bloomer_params
    params.require(:bloomer).permit(:name, :city, :country, :category, :address, :specialty, :date_creation)
  end

end
