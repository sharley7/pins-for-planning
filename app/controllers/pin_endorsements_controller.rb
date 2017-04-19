class PinEndorsementsController < ApplicationController
before_action :logged_in?

  def new
    @pin_endorsement = PinEndorsement.new
  end

  def create
    @pin_endorsement = PinEndorsement.new(pin_endorsement_params)

    if @pin_endorsement.save
      redirect_to pin_path(@pin_endorsement.pin)
    elsif @pin_endorsement.save == false && current_user
      flash[:notice] = "You can only vote once for each pin."
      redirect_to pin_path(@pin_endorsement.pin)
    else
      flash[:notice] = "You must be logged in to vote."
      redirect_to pin_path(@pin_endorsement.pin)
    end
  end

  private

  def pin_endorsement_params
    params.require(:pin_endorsement).permit(:user_id, :pin_id)
  end

end
