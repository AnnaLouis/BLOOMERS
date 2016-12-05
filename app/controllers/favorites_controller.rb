class FavoritesController < ApplicationController
  before_action :find_bloomer

  # def new
  #   @favorite = Favorite.new
  #   authorize(@review)
  # end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.bloomer = @bloomer
    @favorite.hidden = false
    authorize @favorite
    # raise
    if @favorite.save
      redirect_to bloomer_path(@bloomer), notice: "#{@bloomer.name} a bien été rajouté dans vos favoris"
    else
      redirect_to bloomer_path(@bloomer), alert: 'Something went wrong...*sad panda*'
    end
  end

  def add
    @favorite = Favorite.find_by(bloomer_id: @bloomer.id, user_id: current_user.id)
    @favorite.hidden = false
    authorize @favorite
    @favorite.save
    redirect_to bloomer_path(@bloomer), notice: "#{@bloomer.name} a été ajouté de vos favoris"
  end

  def hide
    @favorite = Favorite.find_by(bloomer_id: @bloomer.id, user_id: current_user.id)
    @favorite.hidden = true
    authorize @favorite
    @favorite.save
    redirect_to bloomer_path(@bloomer), alert: "#{@bloomer.name} a été retiré de vos favoris"
  end

  private

  def find_bloomer
    @bloomer = Bloomer.find(params[:bloomer_id] || params[:id])
  end
end
