class Residences::NoticesController < Residences::ApplicationController
  before_action :set_residences_notice, only: [:show]

  # GET /residences/notices
  # GET /residences/notices.json
  def index
    a = NoticeTag.where(tag_id:3).or(NoticeTag.where(tag_id:1))
    notice = a.map{|n|n.notice.id}
    @residences_notices = Notice.find(notice)
  end

  # GET /residences/notices/1
  # GET /residences/notices/1.json
  def show
  end

  # # GET /residences/notices/new
  # def new
  #   @residences_notice = Residences::Notice.new
  # end

  # # GET /residences/notices/1/edit
  # def edit
  # end

  # # POST /residences/notices
  # # POST /residences/notices.json
  # def create
  #   @residences_notice = Residences::Notice.new(residences_notice_params)

  #   respond_to do |format|
  #     if @residences_notice.save
  #       format.html { redirect_to @residences_notice, notice: 'Notice was successfully created.' }
  #       format.json { render :show, status: :created, location: @residences_notice }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @residences_notice.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /residences/notices/1
  # # PATCH/PUT /residences/notices/1.json
  # def update
  #   respond_to do |format|
  #     if @residences_notice.update(residences_notice_params)
  #       format.html { redirect_to @residences_notice, notice: 'Notice was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @residences_notice }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @residences_notice.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /residences/notices/1
  # # DELETE /residences/notices/1.json
  # def destroy
  #   @residences_notice.destroy
  #   respond_to do |format|
  #     format.html { redirect_to residences_notices_url, notice: 'Notice was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residences_notice
      @residences_notice = Notice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def residences_notice_params
    #   params.fetch(:residences_notice, {})
    # end
end
