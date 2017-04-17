class Tag < ApplicationRecord
  has_many :pin_tags
  has_many :pins, through: :tags
end
