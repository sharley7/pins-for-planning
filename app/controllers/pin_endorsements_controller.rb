class PinEndorsementsController < ApplicationController

  def new
    @pin_endorsement = PinEndorsement.new
  end

  def create
    @pin_endorsement = PinEndorsement.new(pin_endorsement_params)

    if @pin_endorsement.save
      redirect_to pin_path(@pin_endorsement.pin)
    else
      redirect_to pin_path(@pin_endorsement.pin)
    end
  end

  private

  def pin_endorsement_params
    params.require(:pin_endorsement).permit(:user_id, :pin_id)
  end

end
