class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :crop
  belongs_to :address

  attr_accessor :token, :price


  validates :quantity, numericality: { only_integer: true }
  validates :quantity, numericality: { greater_than: 0 }
  validates :price, presence: true
  validates :token, presence: true

end
