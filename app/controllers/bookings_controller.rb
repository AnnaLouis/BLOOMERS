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
    @booking.start_date = DateTime.parse(params[:booking][:start_date])
    @booking.end_date = @booking.start_date + 1.hours
    @booking.candidature = @candidature
    @booking.bloomer = @candidature.program.bloomer
    @booking.status = "pending"
    if @booking.save
      @booking.candidature.status = "rdv"
      @booking.candidature.save
      redirect_to dashboard_path(@candidature.program.bloomer)
      flash[:notice] = "Votre booking a bien été pris en compte, vous serez prévenu de la confirmation"
    else
      render :new
    end
  end

  def validate
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

end
