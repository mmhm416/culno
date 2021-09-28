class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  has_one :address
  has_many :crops
  has_many :purchases
  has_many :messages

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :level

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