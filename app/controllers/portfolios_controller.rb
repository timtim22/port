class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
    layout "portfolio"
    access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
    def index
        @portfolio_items = Portfolio.all 
    end

    def angular
        @angular_portfolio_item = Portfolio.angular
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: "Your portfolio item is now live" }
            else
                format.html {render :new}
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @portfolio_item.update(portfolio_params)
                format.html { redirect_to portfolios_path, notice: "The portfolio item is Updated"  }
            else
                format.html {render :edit}
            end
        end
    end


    def show
        
    end

    def destroy
        

        @portfolio_item.destroy

        respond_to do |format|
            format.html { redirect_to portfolios_path, notice: "Post was deleted" }
        end
    end

    private

    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image,
            technologies_attributes: [:id, :name, :_destroy])
    end

    def set_portfolio_item
        @portfolio_item = Portfolio.find(params[:id])
    end

end
