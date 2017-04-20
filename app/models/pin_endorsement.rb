class PinEndorsement < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  validates :user_id, uniqueness: {scope: :pin_id}
  validates :user_id, presence: true

end
