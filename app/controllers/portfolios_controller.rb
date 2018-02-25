class PortfoliosController < ApplicationController
  before_action :get_portfolio, only: [:show, :edit, :update]

  def index 
    @portfolio_items = Portfolio.all
  end 

  def new 
    @portfolio_item = Portfolio.new 
  end 
  
  def show 
    
  end 

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save 
      flash[:notice] = 'Portfolio has been created successfully.'
      redirect_to @portfolio_item 
    else 
      flash.now[:error] = "Something went wrong."
      render 'new'
    end 
  end 
  
  def edit 
    
  end 

  def update 
    if @portfolio_item.update_attributes(portfolio_params)
      flash[:notice] = "Portfolio has been updated."
      redirect_to @portfolio_item
    else 
      flash[:error] = "Something went wrong."
      render 'new'
    end 

  end 
  private 
  
  def get_portfolio 
    @portfolio_item = Portfolio.find(params[:id])
  end 

  def portfolio_params 
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end 

end
