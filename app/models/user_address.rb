class UserAddress
  include ActiveModel::Model
  attr_accessor :nickname, :email, :password, :password_confirmation, :level_id, :birthday, :user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :business_name, :zip_code, :prefecture_id, :city, :addresses, :building, :phone_no

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

  validates :prefecture_id, numericality: { other_than: 0, message: 'Select' }
  validates :phone_no, length: { maximum: 11 }
  validates :phone_no, numericality: { only_integer: true }
  validates :zip_code, format: { with: /\A\d{3}-\d{4}\z/, message: 'input must be of the form XXX-XXXX' }

  def save
    user = User.create(nickname: nickname, email: email, password: password, :password_confirmation: password_confirmation, level_id: level_id, birthday: birthday)
    addresses.create(first_name: first_name, last_name: last_name, first_name_kana: first_name_kana, last_name_kana: last_name_kana, zip_code: zip_code, prefecture_id: prefecture_id, city: city, addresses: addresses, building: building,
                    phone_no: phone_no, user_id: user.id)
  end
end
