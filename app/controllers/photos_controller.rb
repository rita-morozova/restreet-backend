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
    photo = Photo.create(user_id: current_user.id, username: current_user.username, image: result['url'], count: params[:count], liked: params[:liked])
    if photo.save
      render json: {user: UserSerializer.new(@user)}
    else
     render json: photo.errors
    end  
  end

  # def like 
  #   photo = Photo.find(params[:id])
  #   #current user can like this photo
  #   Like.create(user_id: current_user.id, photo_id: photo.id)
  #   render json: photo
  # end   

  def like
    photo = Photo.find(params[:id])
    like = photo.likes.new(user_id: current_user.id)
    if like.save
      render :show
    else
      render({ json: ["cannot like photo twice"], status: 422 })
    end
  end

  def unlike
    photo = Photo.find(params[:id])
    like = Like.find_by(user_id: current_user.id, photo_id: photo.id)
    if like.destroy
      render :show
    else
      render ({ json: ["cannot unlike photo twice"], status: 422 })
    end
  end


  def liked?(current_user)
    photo = Photo.find(params[:id])
      photo.likes.find{|like| like.user_id === current_user.id}
  end 
 

  def update 
    photo = Photo.find(params[:id])
    photo.update(edit_params)
      if photo.valid?
          render json: photo
      else
          render json: photo.errors
      end
  end 

 

  def destroy 
    photo = Photo.find(params[:id])
    photo.destroy
    render json: photo
  end 

  private

  def photo_params
    params.require(:photo).permit(:user_id, :username, :image)
  end

  def edit_params
    params.require(:photo).permit(:count, :liked)
  end   

end
