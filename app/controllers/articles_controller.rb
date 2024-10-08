class ArticlesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:article].inspect
    # @article = Article.new(params[:article])
    # @article = Article.new(params.require(:article).permit(:title, :text))
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
