class ArticlesController < ApplicationController

  def index
    @articles = Article.page(params[:page]).per(5)
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to "/articles"
  end

end
