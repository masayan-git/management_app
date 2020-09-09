class Residences::ResidenceMessagesController < Residences::ApplicationController
  before_action :set_residences_residence_message, only: [:show, :edit, :update, :destroy]

  # GET /residences/residence_messages
  # GET /residences/residence_messages.json
  def index
    @room = ChatroomResidence.find(params[:chatroom_residence_id])
    @messages = @room.residence_messages
    @message = ResidenceMessage.new
    @chatroom = ChatroomResidence.where(residence_id: current_residence.id)
  end

  # GET /residences/residence_messages/1
  # GET /residences/residence_messages/1.json
  def show
  end

  # GET /residences/residence_messages/new
  def new
    @residences_residence_message = ResidenceMessage.new
  end

  # GET /residences/residence_messages/1/edit
  def edit
  end

  # POST /residences/residence_messages
  # POST /residences/residence_messages.json
  def create
    @residences_residence_message = ResidenceMessage.new(residences_residence_message_params)

    respond_to do |format|
      if @residences_residence_message.save
        format.html { redirect_to action: :index, notice: 'Residence message was successfully created.' }
        format.json { render :show, status: :created, location: @residences_residence_message }
      else
        format.html { render :new }
        format.json { render json: @residences_residence_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residences/residence_messages/1
  # PATCH/PUT /residences/residence_messages/1.json
  
  # DELETE /residences/residence_messages/1
  # DELETE /residences/residence_messages/1.json
  def destroy
    @residences_residence_message.destroy
    respond_to do |format|
      format.html { redirect_to action: :index, notice: 'Residence message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residences_residence_message
      @residences_residence_message = ResidenceMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def residences_residence_message_params
      params.require(:residence_message).permit(:message,:image, :move).merge(chatroom_residence_id: params[:chatroom_residence_id], residence_id: current_residence.id)
    end
end
