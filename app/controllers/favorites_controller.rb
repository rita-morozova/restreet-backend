class FavoritesController < ApplicationController

  def index 
    favorites = Favorite.all  
    render json: favorites
  end 

  def show
    favorite=Favorite.find(params[:id])
    render json: favorite
  end 

  def create
    favorite = Favorite.new(user_id:current_user.id, art_id: params[:art_id])
    if favorite.save
        render json: {user: UserSerializer.new(@user)}
    else
       render json: @favorite.errors
    end 
  end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end

private

def favorite_params
    params.require(:favorite).permit(:user_id, :art_id)
end
end
