class PhotosController < ApplicationController

  def index
    photos = Photo.all
    render json: photos
  end

  def show 
    photo = Photo.find(params[:id])
    render json: photo 
  end 

  def create 
    #upload image to cloudinary(result should take in 'url' to display in the browser)
    result = Cloudinary::Uploader.upload(params[:image])
    photo = Photo.create(user_id: current_user.id, username: current_user.username, image: result['url'])
    if photo.save
      render json: photo
    else
     render json: photo.errors
    end  
  end

  # def update 
  #   photo = Photo.find(params[:id])
  #   photo.update(edit_params)
  #     if photo.valid?
  #         render json: photo
  #     else
  #         render json: photo.errors
  #     end
  # end 

  def destroy 
    photo = Photo.find(params[:id])
    photo.destroy
    render json: photo
  end 

  private

  def photo_params
    params.require(:photo).permit(:user_id, :username, :image)
  end


end
