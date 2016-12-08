class ReviewsController < ApplicationController

  before_action :find_bloomer, only: [ :create ]


  def new
    @review = Review.new
    authorize(@review)
  end

  def create
    @review = @bloomer.reviews.build(review_params)
    @review.user = current_user
    authorize(@review)
    if @review.save
    flash[:notice] = "C'est enregistré merci !"
    redirect_to bloomer_path(@bloomer, anchor: "tab=reviews")
    else
    flash[:alert] = "Oups, un champ a été mal rempli..."
    render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating, :title)
  end

  def find_bloomer
    @bloomer = Bloomer.find(params[:bloomer_id])
  end

end
