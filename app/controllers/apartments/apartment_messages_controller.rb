class Apartments::ApartmentMessagesController < Apartments::ApplicationController
  before_action :set_apartments_apartment_message, only: [:show, :edit, :update, :destroy]

  # GET /apartments/apartment_messages
  # GET /apartments/apartment_messages.json
  def index
    # binding.pry
    @room = ChatroomApartment.find(params[:chatroom_apartment_id])
    @messages = @room.apartment_messages
    @message = ApartmentMessage.new
    @chatroom = ChatroomApartment.where(apartment_id: current_apartment.id)

  end

  # GET /apartments/apartment_messages/1
  # GET /apartments/apartment_messages/1.json
  def show
  end

  # GET /apartments/apartment_messages/new
  def new
    @apartments_apartment_message = ApartmentMessage.new
  end

  # GET /apartments/apartment_messages/1/edit
  def edit
  end

  # POST /apartments/apartment_messages
  # POST /apartments/apartment_messages.json
  def create
    @apartments_apartment_message = ApartmentMessage.new(apartments_apartment_message_params)

    respond_to do |format|
      if @apartments_apartment_message.save
        format.html { redirect_to action: :index, notice: 'Apartment message was successfully created.' }
        format.json { render :show, status: :created, location: @apartments_apartment_message }
      else
        format.html { redirect_to action: :index }
        format.json { render json: @apartments_apartment_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/apartment_messages/1
  # PATCH/PUT /apartments/apartment_messages/1.json
  
  # DELETE /apartments/apartment_messages/1
  # DELETE /apartments/apartment_messages/1.json
  def destroy
    @apartments_apartment_message.destroy
    respond_to do |format|
      format.html { redirect_to action: :index, notice: 'Apartment message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartments_apartment_message
      @apartments_apartment_message = ApartmentMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartments_apartment_message_params
      params.require(:apartment_message).permit(:message,:image, :move).merge(chatroom_apartment_id: params[:chatroom_apartment_id], apartment_id: current_apartment.id)
    end
end
