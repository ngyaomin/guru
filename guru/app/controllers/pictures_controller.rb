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
    authorize! :create, @picture
  end

  def edit
    @picture = Picture.find(params[:id])
    authorize! :update, @picture
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    authorize! :create, @picture
    @picture.save
    redirect_to @picture
  end

  def update
    @picture = Picture.find(params[:id])
    authorize! :update, @picture
    if @picture.update(picture_params)
      redirect_to @picture
    else
      render 'edit'
    end
  end


  def destroy
    @picture = Picture.find(params[:id])
    authorize! :destroy, @picture
    @picture.destroy

    redirect_to pictures_path
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :picture_image)
    end

end
