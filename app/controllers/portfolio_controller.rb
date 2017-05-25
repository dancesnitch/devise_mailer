class PortfoliosController < ApplicationController
before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all
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

=end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @friend = Portfolio.find(params[:id])
    end

  def portfolio_params
    params.require(:portfolio).permit(:avatar, :name)
  end
end
  