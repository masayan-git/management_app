class Masters::ArticlesController < Masters::ApplicationController
  before_action :set_masters_article, only: [:show, :edit, :update, :destroy]

  # GET /masters/articles
  # GET /masters/articles.json
  def index
    @masters_articles = Article.all
  end

  # GET /masters/articles/1
  # GET /masters/articles/1.json
  def show
  end

  # GET /masters/articles/new
  def new
    @masters_article = Article.new
  end

  # GET /masters/articles/1/edit
  def edit
  end

  # POST /masters/articles
  # POST /masters/articles.json
  def create
    @masters_article = Article.new(masters_article_params)

    respond_to do |format|
      # binding.pry
      if @masters_article.save
        format.html { redirect_to [:masters, @masters_article], notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @masters_article }
      else
        format.html { render :new }
        format.json { render json: @masters_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masters/articles/1
  # PATCH/PUT /masters/articles/1.json
  def update
    respond_to do |format|
      if @masters_article.update(masters_article_params)
        format.html { redirect_to [:masters, @masters_article], notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @masters_article }
      else
        format.html { render :edit }
        format.json { render json: @masters_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masters/articles/1
  # DELETE /masters/articles/1.json
  def destroy
    @masters_article.destroy
    respond_to do |format|
      format.html { redirect_to masters_articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masters_article
      @masters_article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masters_article_params
    params.require(:article).permit(:title, :content).merge(master_id: current_master.id)
      
      # params.fetch(:masters_article, {})
    end
end
