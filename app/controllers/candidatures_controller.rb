class CandidaturesController < ApplicationController
  def show
    @candidature = candidature.find(params[:id])
    authorize @candidature
  end

  def new
    @candidature = candidature.new
    authorize @candidature
  end

  def create
    @candidature = candidature.new(candidature_params)
    @candidature.user = current_user
    authorize(@candidature)
      if @candidature.save
        redirect_to candidature_path(@candidature)
      else
        render 'new'
      end
  end

private

  def candidature_params
    params.require(:candidature).permit(:name, :description, :short_description, :date_creation, :twitter_account, :website)
  end
end
