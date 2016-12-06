class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @candidature = Candidature.find(params[:candidature_id])
    authorize @booking
  end

  def create
    @candidature = Candidature.find(params[:candidature_id])
    @booking = Booking.new
    authorize @booking
    @booking.start_date = Date.strptime(params[:start_date], "%FT%R")
    @booking.end_date = @booking.start_date + 1.hours
    @booking.bloomer = current_user.bloomer
    @booking.candidature = @candidature
    @booking.status = "Pending"
    if @booking.save
      redirect_to bloomer_path(@bloomer)
      flash[:notice] = "Votre booking a bien été pris en compte, vous serez prévenu de la confirmation"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
