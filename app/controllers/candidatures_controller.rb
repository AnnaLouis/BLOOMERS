class CandidaturesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :validate]
  def index
    @candidatures = policy_scope(Candidature)
  end

  def show
    @candidature = Candidature.find(params[:id])
    authorize @candidature
    @bookings = Booking.select{ |booking| booking.bloomer_id == params[:id].to_i}
  end

  def new
    @candidature = Candidature.new
    @program = Program.find(params[:program_id])
    @startups = Startup.select{|startup| startup.user_id == current_user.id }
    # @array_startups = []
    # @startups.each do |startup|
    #   @array_startups << startup.name
    # end
    authorize @candidature
  end

  def create
    @program = Program.find(params[:program_id])
    @candidature = Candidature.new(candidature_params)
    @candidature.program_id = @program.id
    authorize @candidature
    @candidature.status = "new"
      if @candidature.save
        redirect_to dashboard_path
      else
        render 'new'
      end
  end

  def decline?
    status = "declined"
  end

  def accept?
    status = "refused"
  end

  def accept
    @candidature = Candidature.find(params[:id])
    @candidature.status = "accepted"
    @candidature.save
    authorize @candidature
    redirect_to dashboard_path
  end

  def refuse
    @candidature = Candidature.find(params[:id])
    @candidature.status = "refused"
    @candidature.save
    authorize @candidature
    redirect_to dashboard_path
  end

  def short_list
    @candidature = Candidature.find(params[:id])
    @candidature.status = "short list"
    @candidature.save
    authorize @candidature
    redirect_to dashboard_path
  end

  def short_list
    @candidature = Candidature.find(params[:id])
    @candidature.status = "to meet"
    @candidature.save
    authorize @candidature
    redirect_to dashboard_path
  end

private

  def candidature_params
    params.require(:candidature).permit(:question_incubation, :startup_id)
  end

  def find_dates_taken
    all_bookings = []
    @bookings.each do |booking|
      range =
      all_bookings << (booking.start_date..booking.end_date).map{|date| date.strftime("%FT%R")}
    end
    return all_bookings.flatten
  end
end


