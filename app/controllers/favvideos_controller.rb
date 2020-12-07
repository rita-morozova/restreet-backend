class FavvideosController < ApplicationController
  # before_action :authorized, only: [:create, :index, :show, :destroy]
 
  def index 
    favvideos = Favvideo.all 
    render json: favvideos
  end 

  def show
    favvideo=Favvideo.find(params[:id])
    render json: favvideo
  end 

  def create
    favvideo = Favvideo.new(user_id:current_user.id, video_id: params[:video_id])
    if favvideo.save
        render json: {user: UserSerializer.new(@user)}
    else
       render json: favvideo.errors
    end 
  end

    def destroy
        favvideo = Favvideo.find(params[:id])
        favvideo.destroy
        render json: favvideo
    end

private

def favvideo_params
    params.require(:favvideo).permit(:user_id, :video_id)
end
end
