class PujasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


    def index
     @pujas = Puja.all.paginate(page: params[:page], per_page: 6).order("created_at DESC")
    end

    def show
      @puja = Puja.find(params[:id])
    end

    def new
      @puja = current_user.pujas.build
      authorize! :create, @puja
    end

    def edit
      @puja = Puja.find(params[:id])
      authorize! :update, @puja
    end

    def create
      @puja = current_user.pujas.build(puja_params)
      authorize! :create, @puja

      @puja.save
      redirect_to @puja
    end

    def update
      @puja = Puja.find(params[:id])
      authorize! :update, @puja
      if @puja.update(puja_params)
        redirect_to @puja
      else
        render 'edit'
      end
    end

    def destroy
      @puja = Puja.find(params[:id])
      authorize! :destroy, @puja
      @puja.destroy

      redirect_to pujas_path
    end



  private
  def puja_params
    params.require(:puja).permit(:name, :description, :benefit, :suggested_offering)
  end

end
