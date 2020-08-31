class Masters::NoticesController < Masters::ApplicationController
  before_action :set_masters_notice, only: [:show, :edit, :update, :destroy]
  # GET /masters/notices
  # GET /masters/notices.json
  def index
    @masters_notices = Notice.all
    
  end

  # GET /masters/notices/1
  # GET /masters/notices/1.json
  def show
    # binding.pry
  end

  # GET /masters/notices/new
  def new
    # binding.pry
    @masters_notice = Notice.new
    @tag = Tag.all
  end

  # GET /masters/notices/1/edit
  def edit
    @tag = Tag.all
    @notice_tags = @masters_notice.tags
    @tags = @notice_tags.index_by(&:id)
    # binding.pry
  end

  # POST /masters/notices
  # POST /masters/notices.json
  def create
    # binding.pry
    @masters_notice = NoticesTag.new(masters_notice_params)
# binding.pry
    respond_to do |format|
      if @masters_notice.save
        format.html { redirect_to masters_notices_path, notice: 'Notice was successfully created.' }
        format.json { render :show, status: :created, location: @masters_notice }
      else
        format.html { render :new }
        format.json { render json: @masters_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/notices/1
  # PATCH/PUT /masters/notices/1.json
  def update
    respond_to do |format|
      if @masters_notice.update(masters_notice_params)
        format.html { redirect_to [:masters,@masters_notice], notice: 'Notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_notice }
      else
        format.html { render :edit }
        format.json { render json: @masters_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/notices/1
  # DELETE /masters/notices/1.json
  def destroy
    @masters_notice.destroy
    respond_to do |format|
      format.html { redirect_to masters_notices_url, notice: 'Notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_notice
      @masters_notice = Notice.find(params[:id])
      # binding.pry
    end
    
    def set_masters_tag
      # @tag = NoticeTag.find(params)
    end
    # Only allow a list of trusted parameters through.
    def masters_notice_params
      # binding.pry
      params.require(:notice).permit(:title, :content,{tag_ids: []}).merge(master_id: current_master.id)

    end
end
