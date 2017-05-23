class PagesController < ApplicationController


  def index
  	@articles = Article.last(10) 
  end

  def contact
  end

  def about
  end
end
