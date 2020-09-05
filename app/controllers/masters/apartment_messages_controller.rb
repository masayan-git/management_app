class Masters::ApartmentMessagesController < Masters::ApplicationController
  before_action :set_masters_apartment_message, only: [:show, :edit, :update, :destroy]

  # GET /masters/apartment_messages
  # GET /masters/apartment_messages.json
  def index
    # binding.pry
    @room = ChatroomApartment.find(params[:chatroom_apartment_id])
    @messages = @room.apartment_messages
    @message = ApartmentMessage.new
    @chatroom = ChatroomApartment.all
    # binding.pry
  end

  # GET /masters/apartment_messages/1
  # GET /masters/apartment_messages/1.json
  def show
  end

  # GET /masters/apartment_messages/new
  def new
    @masters_apartment_message = ApartmentMessage.new
  end

  # GET /masters/apartment_messages/1/edit
  def edit
  end

  # POST /masters/apartment_messages
  # POST /masters/apartment_messages.json
  def create
    # binding.pry
    @masters_apartment_message = ApartmentMessage.new(masters_apartment_message_params)
    # binding.pry
    respond_to do |format|
      if @masters_apartment_message.save
        format.html { redirect_to action: :index, notice: 'Apartment message was successfully created.' }
        format.json { render :show, status: :created, location: @masters_apartment_message }
      else
        format.html { redirect_to action: :index }
        format.json { render json: @masters_apartment_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/apartment_messages/1
  # PATCH/PUT /masters/apartment_messages/1.json
  def update
    respond_to do |format|
      if @masters_apartment_message.update(masters_apartment_message_params)
        format.html { redirect_to [:masters,@masters_apartment_message], notice: 'Apartment message was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_apartment_message }
      else
        format.html { render :edit }
        format.json { render json: @masters_apartment_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/apartment_messages/1
  # DELETE /masters/apartment_messages/1.json
  def destroy
    @masters_apartment_message.destroy
    respond_to do |format|
      format.html { redirect_to masters_apartment_messages_url, notice: 'Apartment message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_apartment_message
      @masters_apartment_message = ApartmentMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_apartment_message_params
    # binding.pry
    params.require(:apartment_message).permit(:message,:image, :move).merge(chatroom_apartment_id: params[:chatroom_apartment_id], master_id: current_master.id)
    # binding.pry
    end
end
