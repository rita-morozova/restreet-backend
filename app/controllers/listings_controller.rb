class ListingsController < ApplicationController
  # skip_before_action :authorized

  def index 
    listings = Listing.all 
    render json: listings 
  end 

  def show 
    listing = Listing.find(params[:id])
    render json: listing 
  end 

  def create 
    listing = Listing.new(listing_params)
    if listing.save
      render json: listing 
    else 
      render json: {errors: listing.errors.full_messages}
    end 
  end 

  def update 
    listing = Listing.find(params[:id])
    listing.update(listing_params)
    render json: listing 
  end 

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy 
    render json: listing 
  end 

  private 

  def listing_params
    params.require(:listing).permit(:lat, :lng, :address, :zipcode, :description, :photo, :user_id, :adopted)
  end 


end
