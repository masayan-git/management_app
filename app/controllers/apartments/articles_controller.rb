class Apartments::ArticlesController < Apartments::ApplicationController
  before_action :set_apartments_article, only: [:show]

  # GET /apartments/articles
  # GET /apartments/articles.json
  def index
    @apartments_articles = Article.all
  end

  # GET /apartments/articles/1
  # GET /apartments/articles/1.json
  def show
  end

  # GET /apartments/articles/new
  # def new
  #   @apartments_article = Apartments::Article.new
  # end

  # # GET /apartments/articles/1/edit
  # def edit
  # end

  # # POST /apartments/articles
  # # POST /apartments/articles.json
  # def create
  #   @apartments_article = Apartments::Article.new(apartments_article_params)

  #   respond_to do |format|
  #     if @apartments_article.save
  #       format.html { redirect_to @apartments_article, notice: 'Article was successfully created.' }
  #       format.json { render :show, status: :created, location: @apartments_article }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @apartments_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /apartments/articles/1
  # # PATCH/PUT /apartments/articles/1.json
  # def update
  #   respond_to do |format|
  #     if @apartments_article.update(apartments_article_params)
  #       format.html { redirect_to @apartments_article, notice: 'Article was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @apartments_article }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @apartments_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /apartments/articles/1
  # # DELETE /apartments/articles/1.json
  # def destroy
  #   @apartments_article.destroy
  #   respond_to do |format|
  #     format.html { redirect_to apartments_articles_url, notice: 'Article was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartments_article
      @apartments_article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartments_article_params
      params.fetch(:apartments_article, {})
    end
end
