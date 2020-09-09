class Apartments::TopsController < Apartments::ApplicationController
  # before_action :set_apartments_top, only: [:show, :edit, :update, :destroy]

  # GET /apartments/tops
  # GET /apartments/tops.json
  def index
    # @room = ChatroomApartment.where(apartment_id: current_apartment.id)
  end

  # # GET /apartments/tops/1
  # # GET /apartments/tops/1.json
  # def show
  # end

  # # GET /apartments/tops/new
  # def new
  #   @apartments_top = Apartments::Top.new
  # end

  # # GET /apartments/tops/1/edit
  # def edit
  # end

  # # POST /apartments/tops
  # # POST /apartments/tops.json
  # def create
  #   @apartments_top = Apartments::Top.new(apartments_top_params)

  #   respond_to do |format|
  #     if @apartments_top.save
  #       format.html { redirect_to @apartments_top, notice: 'Top was successfully created.' }
  #       format.json { render :show, status: :created, location: @apartments_top }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @apartments_top.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /apartments/tops/1
  # # PATCH/PUT /apartments/tops/1.json
  # def update
  #   respond_to do |format|
  #     if @apartments_top.update(apartments_top_params)
  #       format.html { redirect_to @apartments_top, notice: 'Top was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @apartments_top }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @apartments_top.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /apartments/tops/1
  # # DELETE /apartments/tops/1.json
  # def destroy
  #   @apartments_top.destroy
  #   respond_to do |format|
  #     format.html { redirect_to apartments_tops_url, notice: 'Top was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_apartments_top
  #     @apartments_top = Apartments::Top.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def apartments_top_params
  #     params.fetch(:apartments_top, {})
  #   end
end
