class Masters::TopsController < Masters::ApplicationController
  # layout 'masters/application'
  before_action :authenticate_master!
  # before_action :set_masters_top, only: [:show, :edit, :update, :destroy]

  # GET /masters/tops
  # GET /masters/tops.json
  def index
    # @masters_tops = Masters::Top.all
  end

  # GET /masters/tops/1
  # GET /masters/tops/1.json
#   def show
#   end

#   # GET /masters/tops/new
#   def new
#     @masters_top = Masters::Top.new
#   end

#   # GET /masters/tops/1/edit
#   def edit
#   end

#   # POST /masters/tops
#   # POST /masters/tops.json
#   def create
#     @masters_top = Masters::Top.new(masters_top_params)

#     respond_to do |format|
#       if @masters_top.save
#         format.html { redirect_to @masters_top, notice: 'Top was successfully created.' }
#         format.json { render :show, status: :created, location: @masters_top }
#       else
#         format.html { render :new }
#         format.json { render json: @masters_top.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /masters/tops/1
#   # PATCH/PUT /masters/tops/1.json
#   def update
#     respond_to do |format|
#       if @masters_top.update(masters_top_params)
#         format.html { redirect_to @masters_top, notice: 'Top was successfully updated.' }
#         format.json { render :show, status: :ok, location: @masters_top }
#       else
#         format.html { render :edit }
#         format.json { render json: @masters_top.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /masters/tops/1
#   # DELETE /masters/tops/1.json
#   def destroy
#     @masters_top.destroy
#     respond_to do |format|
#       format.html { redirect_to masters_tops_url, notice: 'Top was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_masters_top
#       @masters_top = Masters::Top.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def masters_top_params
#       params.fetch(:masters_top, {})
#     end
end
