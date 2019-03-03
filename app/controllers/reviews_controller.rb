class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :create ]
  before_action :set_tour, only: [:new, :create]

  def create
    @review = Review.new(review_params)
    @review.tour = @tour
    @review.save

    authorize @review
  end

  private

   def set_tour
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
