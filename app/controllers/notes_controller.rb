class NotesController < ApplicationController
  # skip_before_action :authorized

  def index 
    notes = Note.all  
    render json: notes
  end 

  def show
    note=Note.find(params[:id])
    render json: note
  end 

  def create
    note = Note.new(user_id:current_user.id, video_id: params[:video_id], content: params[:content])
    if note.save
        render json: {user: UserSerializer.new(@user)}
    else
       render json: @notes.errors
    end 
  end

  def update
    note= Note.find(params[:id])
    note.update(note_params)
    if (note.valid?)
        render json: note
    else
        render json: {errors: note.errors.full_messages, id: note.id }, status: :not_acceptable
    end
end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: note
    end

private

def note_params
    params.require(:note).permit(:user_id, :video_id, :content) 
end

end
