class Crop < ApplicationRecord

  belongs_to :user
  has_many :purchases
  has_many :messages, dependent: :destroy

  has_many_attached :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_cost
  belongs_to :prefecture
  belongs_to :delivery_time

  with_options presence: true do
    validates :images
    validates :item_name
    validates :explanation
    validates :price
  end

  with_options numericality: { other_than: 0, message: 'Select' } do
    validates :category_id
    validates :condition_id
    validates :delivery_cost_id
    validates :prefecture_id
    validates :delivery_time_id
  end

  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  validate :image_length, :image_size
  


  def self.search(search)
    if search != ""
      Crop.where('item_name LIKE(?)', "%#{search}%")
    else
      Crop.all
    end
  end


  private
  def image_length
    if images.length != 4
      errors.add(:images, "must exist 4")
    end
  end

  def image_size
    images.each do |image|
      if image.blob.byte_size > 2.megabytes
        errors.add(:images, "must be within 5MB of one file")
      end
    end
  end

end
