class ToursController < ApplicationController

  before_action :set_tour, only: [:show, :edit, :update, :destroy]
  # before_action :set_tour, only: [:create, :show]

  def index
    # @tours = Tour.all
    @tours = policy_scope(Tour)
  end

  def show
    #set_tour method called
    #authorize @tour
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
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
    params.require(:tour).permit(:title, :location, :description, :price, :photo, :user, :date, :capacity)
  end
end
