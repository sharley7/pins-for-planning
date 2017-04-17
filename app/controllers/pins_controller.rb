class PinsController < ApplicationController

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
  end

  def show
    @pin = Pin.find_by(id: params[:id])
  end 

  private

  def pin_params
  end

end
