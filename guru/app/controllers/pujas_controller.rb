class PujasController < ApplicationController
  def new
  end

  def create
  @puja = Puja.new(params[:puja])

  @puja.save
  redirect_to @puja
  end

  private
    def puja_params
      params.require(:puja).permit(:name, :description, :benefit, :suggested_offering)
    end

end
