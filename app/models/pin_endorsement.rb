class PinEndorsement < ApplicationRecord
  belongs_to :pin
  belongs_to :user
end
