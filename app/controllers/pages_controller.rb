class PagesController < ApplicationController


  def index
  	@articles = Article.last(5)
  	#@portfolio = Portfolio.all 
  end

  def contact
  end

  def about
  end
end
