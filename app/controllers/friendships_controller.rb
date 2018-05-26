class FriendshipsController < ApplicationController

     before_action :authenticate_user!

  # GET /notes
  # GET /notes.json
  def index
   @friendships = Friendship.all 
 end


  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    Friendship.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
