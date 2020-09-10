class Masters::ChatroomResidencesController < Masters::ApplicationController
  before_action :set_masters_chatroom_residence, only: [:show, :edit, :update, :destroy]

  # GET /masters/chatroom_residences
  # GET /masters/chatroom_residences.json
  def index
    @chatroom = ChatroomResidence.all
  end

  # GET /masters/chatroom_residences/1
  # GET /masters/chatroom_residences/1.json
  def show
  end

  # GET /masters/chatroom_residences/new
  def new
    @residence = Residence.all
    @masters_chatroom_residence = ChatroomResidence.new
  end

  # GET /masters/chatroom_residences/1/edit
  def edit
  end

  # POST /masters/chatroom_residences
  # POST /masters/chatroom_residences.json
  def create
    @residence = Residence.all
    @masters_chatroom_residence = ChatroomResidence.new(masters_chatroom_residence_params)

    respond_to do |format|
      if @masters_chatroom_residence.save
        format.html { redirect_to [:masters,@masters_chatroom_residence], notice: 'Chatroom residence was successfully created.' }
        format.json { render :show, status: :created, location: @masters_chatroom_residence }
      else
        format.html { render :new }
        format.json { render json: @masters_chatroom_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/chatroom_residences/1
  # PATCH/PUT /masters/chatroom_residences/1.json
  def update
    respond_to do |format|
      if @masters_chatroom_residence.update(masters_chatroom_residence_params)
        format.html { redirect_to [:masters,@masters_chatroom_residence], notice: 'Chatroom residence was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_chatroom_residence }
      else
        format.html { render :edit }
        format.json { render json: @masters_chatroom_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/chatroom_residences/1
  # DELETE /masters/chatroom_residences/1.json
  def destroy
    @masters_chatroom_residence.destroy
    respond_to do |format|
      format.html { redirect_to masters_chatroom_residences_url, notice: 'Chatroom residence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_chatroom_residence
      @masters_chatroom_residence = ChatroomResidence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_chatroom_residence_params
      # binding.pry
      params.require(:chatroom_residence).permit(:residence_id).merge(master_id: current_master.id, name:Residence.find(params[:chatroom_residence][:residence_id]).room_num)
    end
end
