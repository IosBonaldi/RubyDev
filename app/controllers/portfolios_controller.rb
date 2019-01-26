class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit, :update]}, site_admin: :all
  layout "portfolio"

  def index
    @portfolio_items = Portfolio.all
    #@portfolio_items = Portfolio.where(subtitle: "Angular")
    #@portfolio_items = Portfolio.angular
    #@portfolio_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def angular
    #@portfolio_items = Portfolio.all
    @angular_portfolio_items = Portfolio.where(subtitle: "Angular")
    #@portfolio_items = Portfolio.angular
    #@portfolio_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def new
    @portfolio_item = Portfolio.new
    3.times {@portfolio_item.technologies.build}
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        #format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        #format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Potfolio was successfully destroyed.' }
    end
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(
        :title,
        :subtitle,
        :body,
        technologies_attributes: [:name]
      )
    end

    def set_portfolio_item
      @portfolio_item= Portfolio.find(params[:id])
    end

end
