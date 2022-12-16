class Api::V1::ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    render json: @listing
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      render json: @listing
    else
      render json: { error: 'Unable to create listing.' }, status: 400
    end
  end

  def update
    if @listing.update(listing_params)
      render json: @listing
    else
      render json: { error: 'Unable to update listing.' }, status: 400
    end
  end

  def destroy
    if @listing.destroy
      render json: { message: 'Listing successfully deleted.' }, status: 200
    else
      render json: { message: 'Unable to delete listing.' }, status: 400
    end
  end

  private
  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:num_rooms, :listing_id)
  end
end
