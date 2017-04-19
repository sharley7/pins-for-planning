class Pin < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :pin_tags
  has_many :tags, through: :pin_tags
  has_many :pin_endorsements
  validates :title, presence: true, length: { in: 3..55 }
  validates :image_file_name, presence: true
  validates :description, length: { in: 10..200 }






  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes['title'].blank? }

  has_attached_file :image, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def tags_attributes=(tags_attributes)
  tags_attributes.values.each do |tag_attribute|
    tag = Tag.find_or_create_by(tag_attribute)
    self.tags << tag
  end
end



end
