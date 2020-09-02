class Masters::ChatroomApartmentsController < Masters::ApplicationController
  before_action :set_masters_chatroom_apartment, only: [:show, :edit, :update, :destroy]

  # GET /masters/chatroom_apartments
  # GET /masters/chatroom_apartments.json
  def index
    @chatroom = ChatroomApartment.all
  end

  # GET /masters/chatroom_apartments/1
  # GET /masters/chatroom_apartments/1.json
  def show
  end

  # GET /masters/chatroom_apartments/new
  def new
    @apartment = Apartment.all
    @masters_chatroom_apartment = ChatroomApartment.new
  end

  # GET /masters/chatroom_apartments/1/edit
  def edit
  end

  # POST /masters/chatroom_apartments
  # POST /masters/chatroom_apartments.json
  def create
    @apartment = Apartment.all
    # binding.pry
    @masters_chatroom_apartment = ChatroomApartment.new(masters_chatroom_apartment_params)
    # apa = @apartment.@masters_chatroom_apartment.apartment_id.room_num
    binding.pry
    respond_to do |format|
      if @masters_chatroom_apartment.save
        format.html { redirect_to [:masters,@masters_chatroom_apartment], notice: 'Chatroom apartment was successfully created.' }
        format.json { render :show, status: :created, location: @masters_chatroom_apartment }
      else
        format.html { render :new }
        format.json { render json: @masters_chatroom_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/chatroom_apartments/1
  # PATCH/PUT /masters/chatroom_apartments/1.json
  def update
    respond_to do |format|
      if @masters_chatroom_apartment.update(masters_chatroom_apartment_params)
        format.html { redirect_to [:masters,@masters_chatroom_apartment], notice: 'Chatroom apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_chatroom_apartment }
      else
        format.html { render :edit }
        format.json { render json: @masters_chatroom_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/chatroom_apartments/1
  # DELETE /masters/chatroom_apartments/1.json
  def destroy
    @masters_chatroom_apartment.destroy
    respond_to do |format|
      format.html { redirect_to masters_chatroom_apartments_url, notice: 'Chatroom apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_chatroom_apartment
      @masters_chatroom_apartment = ChatroomApartment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_chatroom_apartment_params
      # binding.pry
      params.require(:chatroom_apartment).permit(:apartment_id).merge(master_id: current_master.id, name:Apartment.find(params[:chatroom_apartment][:apartment_id]).room_num)
      # binding.pry
    end
end
