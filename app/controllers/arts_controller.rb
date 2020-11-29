class ArtsController < ApplicationController
  # skip_before_action :authorized
 

  def index 
    arts = Art.all 
    render json: arts 
  end 

  def show 
    art=Art.find(params[:id])
    render json: art
  end 

end
