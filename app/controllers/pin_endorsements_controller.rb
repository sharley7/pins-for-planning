class PinEndorsementsController < ApplicationController
before_action :logged_in?

  def new
    @pin_endorsement = PinEndorsement.new
  end

  def create
    @pin_endorsement = PinEndorsement.new(pin_endorsement_params)

    if @pin_endorsement.save
      redirect_to :back
    elsif @pin_endorsement.save == false && current_user
      flash[:notice] = "You can only vote once for each pin."
      redirect_to :back
    else
      flash[:notice] = "You must be logged in to vote."
      redirect_to :back
    end
  end

  def index
    @pin_endorsements = PinEndorsement.all.map do | pe |
      pe.pin
    end
    if params[:user_id]
      @pin_endorsements = User.find(params[:user_id]).pin_endorsements.map do | pe |
        pe.pin
      end
     end
  end

  private

  def pin_endorsement_params
    params.require(:pin_endorsement).permit(:user_id, :pin_id)
  end

end
