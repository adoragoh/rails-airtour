class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]
  before_action :set_tour, only: [:new, :create, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tour = @tour
    @booking.ingredient = @ingredient
    @booking.save
    if @booking.save
      redirect_to tour_path(@tour)
    else
      render :new
    end
  end

  def edit

  end

  def update
    @booking.update(booking_params)
  end

  def destroy
    @booking.destroy
    redirect_to tour_path(@tour)
  end

  private

  def booking_params
    params.require(:booking).permit(:tour_id, :user_id, :guests)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
  end
end
