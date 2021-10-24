class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  has_many :addresses
  has_many :crops
  has_many :purchases
  has_many :messages

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :level

  with_options numericality: { other_than: 0, message: 'Select' } do
    validates :level_id
  end

  with_options format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'include both letters and numbers' } do
    validates :password
  end

  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :level_id
  end

    with_options uniqueness: { case_sensitive: true } do
      validates :nickname
      validates :email
    end
    
end