class LikesController < ApplicationController

  def index
    likes = Like.all
    render json: likes
 end

 def show 
  like = Like.find(params[:id])
  render json: like
 end 

  def create
    # prevent from liking for other users
    params[:like][:user_id] = current_user.id
    like = Like.new(user_id:current_user.id, photo_id: params[:photo_id])
    if like.save
      render json: like
    else
      render json: like.errors
    end
  end

  def update
    like = Like.find(params[:id])
    like.update(user_id:current_user.id, photo_id: params[:photo_id])
    render json: like
 end 

  def destroy
    like = Like.find(params[:id])
    like.destroy 
    render json: like
  end

end
