class PujasController < ApplicationController
  def new
  end

  def create
    render plain: params[:puja].inspect
  end
end
