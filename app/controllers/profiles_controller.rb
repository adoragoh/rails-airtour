class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @bookings = policy_scope(Booking)
    @my_bookings = @bookings.where(user_id: current_user).order(created_at: :desc)

    @tours = policy_scope(Tour)
    @my_tours = @tours.where(user_id: current_user).order(created_at: :desc)

    @just_booked = params[:just_booked] == "true"
    @just_tours = params[:just_tours] == "true"
  end

  private
end
