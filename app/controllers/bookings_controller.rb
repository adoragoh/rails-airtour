class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :create ] #TODO: What other authorizations?
  before_action :set_booking, only: [:edit, :update, :destroy]
  before_action :set_tour, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    #TODO: If there is already a booking for that particular tour, then update that tour booking, not create a new booking.
    @booking.tour = @tour
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path(just_booked: "true")
    else
      render :new
    end
    authorize @booking
  end

  def edit

  end

  def update
    @booking.update(booking_params)
    redirect_to profile_path(just_booked: "true")
  end

  def destroy
    @booking.destroy
    redirect_to profile_path(just_booked: "true")
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :tour_id, :user_id, :guests)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end
end
