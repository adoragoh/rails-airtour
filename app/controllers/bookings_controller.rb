class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]
  before_action :set_tour, only: [:new, :create, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tour = @tour
    @booking.user = current_user
    if @booking.save
      redirect_to tour_bookings_path
    else
      render :new
    end
    authorize @booking
  end

  def edit

  end

  def update
    @booking.update(booking_params)
  end

  def destroy
    @booking.destroy
    redirect_to tour_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:tour_id, :user_id, :guests)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
  end
end
