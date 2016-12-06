class BloomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bloomers = policy_scope(Bloomer)

    @search_bloomer = Bloomer.new

    # # Je crée les spécialités Bloomers
    # @specialities = []
    # @bloomers.each do |bloomer|
    #   @specialities << bloomer.speciality
    # end
    # @specialities.uniq!

    # # Je fais la fonction recherche
    # if params[:search] && params[:search][:category] != ""
    #   @bloomers = @bloomers.where(category: params[:search][:category])
    # end
    # if params[:search] && params[:search][:city] != ""
    #   @bloomers = @bloomers.where(city: params[:search][:city])
    # end

    conditions = {}

    if params[:search]
      # categories
      @selected_categories = params[:search][:category].select(&:present?)
      conditions[:category] = @selected_categories if @selected_categories.present?

      # city
      @selected_city = params[:search][:city]
      conditions[:city] = @selected_city if @selected_city.present?

      # speciality
      @selected_speciality = params[:search][:speciality]
      conditions[:speciality] = @selected_speciality if @selected_speciality.present?

      # price ranges
      @selected_min_price = params[:search][:min_price]
      @selected_max_price = params[:search][:max_price]

      if @selected_min_price || @selected_max_price
        conditions[:program_prices] = {
          ranges: {
            from: @selected_min_price,
            to: @selected_max_price
          }
        }
      end
    end

    search = Bloomer.search("*", aggs: [:category, :city, :speciality, :program_prices], where: conditions)
    @bloomers = search.results

    # raise

    @categories = get_buckets(:category, search)
    @cities = get_buckets(:city, search)
    @specialities = get_buckets(:speciality, search)
    @prices = get_buckets(:program_prices, search)
  end

  def show
    @bloomer = Bloomer.find(params[:id])
    @three_random_startups = @bloomer.startups.order("RANDOM()").limit(3)
    @programs = @bloomer.programs
    @first_program = @programs[0]
    @second_program = @programs[1]
    @third_program = @programs[2]
    authorize @bloomer
    @alert_message = "Vous êtes sur la page de : #{@bloomer.name}"
    @bloomer_coordinates = { lat: @bloomer.latitude, lng: @bloomer.longitude }
    @review = Review.new
    @favorite = Favorite.new
    @find_favorite = Favorite.find_by(bloomer_id: @bloomer.id, user_id: current_user.id)
    @bookings = Booking.select{ |booking| booking.bloomer_id == params[:id].to_i}
    if current_user.startup_admin
      @user_bloomers = []
      current_user.startups.each do |startup|
        startup.batches.each do |batch|
          @user_bloomers << batch.bloomer
        end
      end
    end
# raise
  end

  def new
    @bloomer = Bloomer.new
    @bloomer.user = current_user
    authorize @bloomer
  end

  def create
    @bloomer = Bloomer.new(bloomer_params)
    @bloomer.user = current_user
    authorize @bloomer
    if @bloomer.save
      BloomerMailer.creation_confirmation(@bloomer).deliver_now
      redirect_to bloomer_path(@bloomer)
    else
      render :new
    end
  end

  # def edit
  #   authorize @bloomer
  # end

  # def update
    # authorize @bloomer
  # end

private

  def bloomer_params
     params.require(:bloomer).permit(:name, :city, :category, :website, :email, :twitter_account, :description, :address, :speciality, :date_creation, photos:[])
  end

  def get_buckets(filter_name, search)
    filter_name = filter_name.to_s

    if search.aggregations[filter_name][filter_name]
      buckets = search.aggregations[filter_name][filter_name]["buckets"]
    else
      buckets = search.aggregations[filter_name]["buckets"]
    end
  end

end



