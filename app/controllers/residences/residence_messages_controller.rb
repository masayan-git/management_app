class Residences::ResidenceMessagesController < ApplicationController
  before_action :set_residences_residence_message, only: [:show, :edit, :update, :destroy]

  # GET /residences/residence_messages
  # GET /residences/residence_messages.json
  def index
    @residences_residence_messages = Residences::ResidenceMessage.all
  end

  # GET /residences/residence_messages/1
  # GET /residences/residence_messages/1.json
  def show
  end

  # GET /residences/residence_messages/new
  def new
    @residences_residence_message = Residences::ResidenceMessage.new
  end

  # GET /residences/residence_messages/1/edit
  def edit
  end

  # POST /residences/residence_messages
  # POST /residences/residence_messages.json
  def create
    @residences_residence_message = Residences::ResidenceMessage.new(residences_residence_message_params)

    respond_to do |format|
      if @residences_residence_message.save
        format.html { redirect_to @residences_residence_message, notice: 'Residence message was successfully created.' }
        format.json { render :show, status: :created, location: @residences_residence_message }
      else
        format.html { render :new }
        format.json { render json: @residences_residence_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residences/residence_messages/1
  # PATCH/PUT /residences/residence_messages/1.json
  def update
    respond_to do |format|
      if @residences_residence_message.update(residences_residence_message_params)
        format.html { redirect_to @residences_residence_message, notice: 'Residence message was successfully updated.' }
        format.json { render :show, status: :ok, location: @residences_residence_message }
      else
        format.html { render :edit }
        format.json { render json: @residences_residence_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residences/residence_messages/1
  # DELETE /residences/residence_messages/1.json
  def destroy
    @residences_residence_message.destroy
    respond_to do |format|
      format.html { redirect_to residences_residence_messages_url, notice: 'Residence message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residences_residence_message
      @residences_residence_message = Residences::ResidenceMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def residences_residence_message_params
      params.fetch(:residences_residence_message, {})
    end
end
