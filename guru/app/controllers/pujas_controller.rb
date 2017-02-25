class PujasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


    def index
     @pujas = Puja.all
    end

    def show
      @puja = Puja.find(params[:id])
    end

    def new
      @puja = current_user.pujas.build
      authorize! :create, @puja
    end

    def create
      @puja = current_user.pujas.build(puja_params)
      authorize! :create, @puja

      @puja.save
      redirect_to @puja

  end

  private
  def puja_params
    params.require(:puja).permit(:name, :description, :benefit, :suggested_offering)
  end

end
