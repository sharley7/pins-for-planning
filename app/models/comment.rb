class Comment < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  validates :content, presence: true, length: { in: 3..250 }
  validates :user_id, presence: true

end
