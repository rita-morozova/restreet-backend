class WallsController < ApplicationController
  
  def index
    walls = Wall.all
    render json: walls
  end

  def show
    wall = Wall.find(params[:id])
    render json: wall
  end

  def destroy
    wall=Wall.find(params[:id])
    wall.destroy
  end 

end
