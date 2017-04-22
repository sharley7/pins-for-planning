class Tag < ApplicationRecord
  has_many :pin_tags
  has_many :pins, through: :pin_tags
validates_uniqueness_of :name

end
