class Masters::ResidenceMessagesController < ApplicationController
  before_action :set_masters_residence_message, only: [:show, :edit, :update, :destroy]

  # GET /masters/residence_messages
  # GET /masters/residence_messages.json
  def index
    @masters_residence_messages = Masters::ResidenceMessage.all
  end

  # GET /masters/residence_messages/1
  # GET /masters/residence_messages/1.json
  def show
  end

  # GET /masters/residence_messages/new
  def new
    @masters_residence_message = Masters::ResidenceMessage.new
  end

  # GET /masters/residence_messages/1/edit
  def edit
  end

  # POST /masters/residence_messages
  # POST /masters/residence_messages.json
  def create
    @masters_residence_message = Masters::ResidenceMessage.new(masters_residence_message_params)

    respond_to do |format|
      if @masters_residence_message.save
        format.html { redirect_to @masters_residence_message, notice: 'Residence message was successfully created.' }
        format.json { render :show, status: :created, location: @masters_residence_message }
      else
        format.html { render :new }
        format.json { render json: @masters_residence_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/residence_messages/1
  # PATCH/PUT /masters/residence_messages/1.json
  def update
    respond_to do |format|
      if @masters_residence_message.update(masters_residence_message_params)
        format.html { redirect_to @masters_residence_message, notice: 'Residence message was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_residence_message }
      else
        format.html { render :edit }
        format.json { render json: @masters_residence_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/residence_messages/1
  # DELETE /masters/residence_messages/1.json
  def destroy
    @masters_residence_message.destroy
    respond_to do |format|
      format.html { redirect_to masters_residence_messages_url, notice: 'Residence message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_residence_message
      @masters_residence_message = Masters::ResidenceMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_residence_message_params
      params.fetch(:masters_residence_message, {})
    end
end
