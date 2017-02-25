class PicturesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
   @pictures = Picture.all.order("created_at DESC")
  end


  def show
     @picture = Picture.find(params[:id])
   end

  def new
    @picture = current_user.pictures.build
  end

  def create
    @picture = current_user.pictures.build(picture_params)

    @picture.save
    redirect_to @picture
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :picture_image)
    end

end
