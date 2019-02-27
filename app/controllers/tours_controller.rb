class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy]
  # before_action :set_tour, only: [:create, :show]

  def index
    @tours = policy_scope(Tour)

    @tours = Tour.where.not(latitude: nil, longitude: nil)

    @markers = @tours.map do |tour|
      {
        lng: tour.longitude,
        lat: tour.latitude
      }
    end
  end

  def show
    #set_tour method called
    #authorize @tour
    @marker = [{
      lng: @tour.longitude,
      lat: @tour.latitude
    }]
    @booking = Booking.new
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
    redirect_to tours_path
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
