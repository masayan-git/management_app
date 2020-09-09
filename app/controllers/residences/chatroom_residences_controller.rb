class Residences::ChatroomResidencesController < Residences::ApplicationController

  # GET /residences/chatroom_residences
  # GET /residences/chatroom_residences.json
  def index
    @chatroom = ChatroomResidence.where(residence_id: current_residence.id)
  end

  # GET /residences/chatroom_residences/1
  # GET /residences/chatroom_residences/1.json
  
  # GET /residences/chatroom_residences/new
  
  # GET /residences/chatroom_residences/1/edit
  
  # POST /residences/chatroom_residences
  # POST /residences/chatroom_residences.json
  
  # PATCH/PUT /residences/chatroom_residences/1
  # PATCH/PUT /residences/chatroom_residences/1.json
  
  # DELETE /residences/chatroom_residences/1
  # DELETE /residences/chatroom_residences/1.json
  
end
