class PinsController < ApplicationController

  load_and_authorize_resource

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)

    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  def index
   if params[:user_id]
     @pins = User.find(params[:user_id]).pins
    else
     @pins = Pin.all
    end
  end

  def show
    @pin = Pin.find_by(id: params[:id])
  end

  def edit
    @pin= Pin.find_by(id: params[:id])
  end

  def update
   @pin= Pin.find_by(id: params[:id])
    if @pin.update(pin_params)
      redirect_to @pin
    else
      render 'edit'
    end
  end

  def destroy
     @pin= Pin.find_by(id: params[:id])
     @pin.destroy
     redirect_to pins_path
  end

  def test
    @pins = Pin.all
  end


  private

  def pin_params
    params.require(:pin).permit(:title, :description, :image, :user_id, tag_ids:[], tags_attributes:[:name])
  end




end
