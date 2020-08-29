class Residences::TopsController < Residences::ApplicationController
  # before_action :set_residences_top, only: [:show, :edit, :update, :destroy]

  # # GET /residences/tops
  # # GET /residences/tops.json
  def index
  #   @residences_tops = Residences::Top.all
  end

  # # GET /residences/tops/1
  # # GET /residences/tops/1.json
  # def show
  # end

  # # GET /residences/tops/new
  # def new
  #   @residences_top = Residences::Top.new
  # end

  # # GET /residences/tops/1/edit
  # def edit
  # end

  # # POST /residences/tops
  # # POST /residences/tops.json
  # def create
  #   @residences_top = Residences::Top.new(residences_top_params)

  #   respond_to do |format|
  #     if @residences_top.save
  #       format.html { redirect_to @residences_top, notice: 'Top was successfully created.' }
  #       format.json { render :show, status: :created, location: @residences_top }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @residences_top.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /residences/tops/1
  # # PATCH/PUT /residences/tops/1.json
  # def update
  #   respond_to do |format|
  #     if @residences_top.update(residences_top_params)
  #       format.html { redirect_to @residences_top, notice: 'Top was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @residences_top }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @residences_top.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /residences/tops/1
  # # DELETE /residences/tops/1.json
  # def destroy
  #   @residences_top.destroy
  #   respond_to do |format|
  #     format.html { redirect_to residences_tops_url, notice: 'Top was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_residences_top
  #     @residences_top = Residences::Top.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def residences_top_params
  #     params.fetch(:residences_top, {})
  #   end
end
