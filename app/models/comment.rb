class Comment < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  validates :content, presence: true, length: { in: 3..250 }
  validates_presence_of :user
  accepts_nested_attributes_for :user, reject_if: :reject_user


  def reject_user(user_attributes)
     user_attributes['username'].blank?
   end


end
