class Apartments::NoticesController < Apartments::ApplicationController
  before_action :set_apartments_notice, only: [:show]

  # GET /apartments/notices
  # GET /apartments/notices.json
  def index
    # binding.pry
    a = NoticeTag.where(tag_id:3).or(NoticeTag.where(tag_id:2))
    notice = a.map{|n|n.notice.id}
    @apartments_notices = Notice.find(notice)
    # binding.pry
  end

  # GET /apartments/notices/1
  # GET /apartments/notices/1.json
  def show
  end

  # GET /apartments/notices/new
  # def new
  #   @apartments_notice = Apartments::Notice.new
  # end

  # # GET /apartments/notices/1/edit
  # def edit
  # end

  # # POST /apartments/notices
  # # POST /apartments/notices.json
  # def create
  #   @apartments_notice = Apartments::Notice.new(apartments_notice_params)

  #   respond_to do |format|
  #     if @apartments_notice.save
  #       format.html { redirect_to @apartments_notice, notice: 'Notice was successfully created.' }
  #       format.json { render :show, status: :created, location: @apartments_notice }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @apartments_notice.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /apartments/notices/1
  # # PATCH/PUT /apartments/notices/1.json
  # def update
  #   respond_to do |format|
  #     if @apartments_notice.update(apartments_notice_params)
  #       format.html { redirect_to @apartments_notice, notice: 'Notice was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @apartments_notice }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @apartments_notice.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /apartments/notices/1
  # # DELETE /apartments/notices/1.json
  # def destroy
  #   @apartments_notice.destroy
  #   respond_to do |format|
  #     format.html { redirect_to apartments_notices_url, notice: 'Notice was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartments_notice
      @apartments_notice = Notice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def apartments_notice_params
    #   params.fetch(:apartments_notice, {})
    # end
end
