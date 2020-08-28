class Residences::ArticlesController < Residences::ApplicationController
  before_action :set_residences_article, only: [:show]

  # # GET /residences/articles
  # # GET /residences/articles.json
  def index
    @residences_articles = Article.all
  end

  # # GET /residences/articles/1
  # # GET /residences/articles/1.json
  def show
  end

  # # GET /residences/articles/new
  # def new
  #   @residences_article = Residences::Article.new
  # end

  # # GET /residences/articles/1/edit
  # def edit
  # end

  # # POST /residences/articles
  # # POST /residences/articles.json
  # def create
  #   @residences_article = Residences::Article.new(residences_article_params)

  #   respond_to do |format|
  #     if @residences_article.save
  #       format.html { redirect_to @residences_article, notice: 'Article was successfully created.' }
  #       format.json { render :show, status: :created, location: @residences_article }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @residences_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /residences/articles/1
  # # PATCH/PUT /residences/articles/1.json
  # def update
  #   respond_to do |format|
  #     if @residences_article.update(residences_article_params)
  #       format.html { redirect_to @residences_article, notice: 'Article was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @residences_article }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @residences_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /residences/articles/1
  # # DELETE /residences/articles/1.json
  # def destroy
  #   @residences_article.destroy
  #   respond_to do |format|
  #     format.html { redirect_to residences_articles_url, notice: 'Article was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residences_article
      @residences_article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def residences_article_params
      params.fetch(:residences_article, {})
    end
end
