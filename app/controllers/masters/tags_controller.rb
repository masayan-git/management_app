class Masters::TagsController < Masters::ApplicationController
  before_action :set_masters_tag, only: [:show, :edit, :update, :destroy]

  # GET /masters/tags
  # GET /masters/tags.json
  def index
    @masters_tags = Tag.all
  end

  # GET /masters/tags/1
  # GET /masters/tags/1.json
  def show
  end

  # GET /masters/tags/new
  def new
    @masters_tag = Tag.new
  end

  # GET /masters/tags/1/edit
  def edit
  end

  # POST /masters/tags
  # POST /masters/tags.json
  def create
    @masters_tag = Tag.new(masters_tag_params)

    respond_to do |format|
      if @masters_tag.save
        format.html { redirect_to [:masters,@masters_tag], notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @masters_tag }
      else
        format.html { render :new }
        format.json { render json: @masters_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/tags/1
  # PATCH/PUT /masters/tags/1.json
  def update
    respond_to do |format|
      if @masters_tag.update(masters_tag_params)
        format.html { redirect_to [:masters,@masters_tag], notice: 'Tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_tag }
      else
        format.html { render :edit }
        format.json { render json: @masters_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/tags/1
  # DELETE /masters/tags/1.json
  def destroy
    @masters_tag.destroy
    respond_to do |format|
      format.html { redirect_to masters_tags_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_tag
      @masters_tag = Tag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_tag_params
      params.require(:tag).permit(:name)
    end
end
