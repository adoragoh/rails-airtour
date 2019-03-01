class ToursController < ApplicationController
  before_action :set_tour, only: [:my_tours, :show, :edit, :update, :destroy]
  # before_action :set_tour, only: [:create, :show]

  def index
    @tours = policy_scope(Tour)

    if params[:query].present?
      sql_query = "title ILIKE :query OR location ILIKE :query OR category ILIKE :query"
      @tours = Tour.where(sql_query, query: "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
    else
      @tours = Tour.all.where.not(latitude: nil, longitude: nil)
    end


    @markers = @tours.map do |tour|
      {
        lng: tour.longitude,
        lat: tour.latitude,
        infoWindow: render_to_string(partial: "/shared/map_info", locals: { tour: tour })
      }
    end

    # @all_tours.each do |tour|
    #   if !@categories.include?(tour.category)
    #     @categories << tour.category
    #   end
    # end

  end

  def my_tours
    @my_tours = @tours.where(user_id: current_user)
  end

  def show
    #set_tour method called
    #authorize @tour
    @marker = [{
      lng: @tour.longitude,
      lat: @tour.latitude,
    }]
    @booking = Booking.new

    if current_user != nil
      @booked = current_user.booked_tours.include?(@tour)
    end

    if @booked
      @booking = current_user.bookings.where(tour_id: params[:id]).first
    end

    authorize @booking
  end

  def new
    @tour = Tour.new
    authorize @tour
  end

  def create
    @tour = Tour.new(tour_params)
    authorize @tour
    @tour.user = current_user
    @tour.save
    if @tour.save
      redirect_to tour_path(@tour)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tour.update(tour_params)
    redirect_to tour_path(@tour)
  end

  def destroy
    @tour.destroy
    redirect_to profile_path(just_tours: "true")
  end

  private

  def set_tour
    @tour = Tour.find(params[:id])
    authorize @tour
  end

  def tour_params
    params.require(:tour).permit(:title, :location, :description, :price, :photo, :date, :capacity)
  end
end
