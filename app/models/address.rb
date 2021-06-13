class Address < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :first_name_kana
    validates :last_name_kana
    validates :zip_code
    validates :city
    validates :addresses
    validates :phone_no
    validates :user_id
  end

  with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々]+\z/, message: 'input full-width characters' } do
    validates :first_name
    validates :last_name
  end

  with_options format: { with: /\A[ァ-ヶー－]+\z/, message: 'input full-width katakana characters' } do
    validates :first_name_kana
    validates :last_name_kana
  end

  validates :prefecture_id, numericality: { other_than: 0, message: 'Select' }
  validates :phone_no, length: { maximum: 11 }
  validates :phone_no, numericality: { only_integer: true }
  validates :zip_code, format: { with: /\A\d{3}-\d{4}\z/, message: 'input must be of the form XXX-XXXX' }
  
end
