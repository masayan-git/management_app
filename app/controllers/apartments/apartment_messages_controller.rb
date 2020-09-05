class Apartments::ApartmentMessagesController < ApplicationController
  before_action :set_apartments_apartment_message, only: [:show, :edit, :update, :destroy]

  # GET /apartments/apartment_messages
  # GET /apartments/apartment_messages.json
  def index
    @apartments_apartment_messages = Apartments::ApartmentMessage.all
  end

  # GET /apartments/apartment_messages/1
  # GET /apartments/apartment_messages/1.json
  def show
  end

  # GET /apartments/apartment_messages/new
  def new
    @apartments_apartment_message = Apartments::ApartmentMessage.new
  end

  # GET /apartments/apartment_messages/1/edit
  def edit
  end

  # POST /apartments/apartment_messages
  # POST /apartments/apartment_messages.json
  def create
    @apartments_apartment_message = Apartments::ApartmentMessage.new(apartments_apartment_message_params)

    respond_to do |format|
      if @apartments_apartment_message.save
        format.html { redirect_to @apartments_apartment_message, notice: 'Apartment message was successfully created.' }
        format.json { render :show, status: :created, location: @apartments_apartment_message }
      else
        format.html { render :new }
        format.json { render json: @apartments_apartment_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/apartment_messages/1
  # PATCH/PUT /apartments/apartment_messages/1.json
  def update
    respond_to do |format|
      if @apartments_apartment_message.update(apartments_apartment_message_params)
        format.html { redirect_to @apartments_apartment_message, notice: 'Apartment message was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartments_apartment_message }
      else
        format.html { render :edit }
        format.json { render json: @apartments_apartment_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartments/apartment_messages/1
  # DELETE /apartments/apartment_messages/1.json
  def destroy
    @apartments_apartment_message.destroy
    respond_to do |format|
      format.html { redirect_to apartments_apartment_messages_url, notice: 'Apartment message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartments_apartment_message
      @apartments_apartment_message = Apartments::ApartmentMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartments_apartment_message_params
      params.fetch(:apartments_apartment_message, {})
    end
end
