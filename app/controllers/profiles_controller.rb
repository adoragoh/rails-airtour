class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @tours = policy_scope(Tour)
    @bookings = policy_scope(Booking)

    @my_tours = @tours.where(user_id: current_user)
    @my_bookings = @bookings.where(user_id: current_user)
  end

end
