class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  # Other CRUD actions omitted

def create
  @portfolio = Portfolio.new(portfolio_params)

  if @portfolio.save
    redirect_to @portfolio, notice: 'Portfolio was successfully created.'
   else
    render action: 'new'
   end
 end


private

  def portfolio_params
    params.require(:portfolio).permit(:avatar, :name)
  end
end
  