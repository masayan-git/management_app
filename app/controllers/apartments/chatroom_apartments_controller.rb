class Apartments::ChatroomApartmentsController < Apartments::ApplicationController

  # GET /apartments/chatroom_apartments
  # GET /apartments/chatroom_apartments.json
  def index
    @chatroom = ChatroomApartment.where(apartment_id: current_apartment.id)
    # binding.pry
  end

  # GET /apartments/chatroom_apartments/1
  # GET /apartments/chatroom_apartments/1.json
  

  # GET /apartments/chatroom_apartments/new
  # GET /apartments/chatroom_apartments/1/edit
  

  # POST /apartments/chatroom_apartments
  # POST /apartments/chatroom_apartments.json

  # PATCH/PUT /apartments/chatroom_apartments/1
  # PATCH/PUT /apartments/chatroom_apartments/1.json
  

  # DELETE /apartments/chatroom_apartments/1
  # DELETE /apartments/chatroom_apartments/1.json
  
  
end
