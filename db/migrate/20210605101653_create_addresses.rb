class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|

      t.timestamps
      t.string     :first_name,      null: false
      t.string     :last_name,       null: false
      t.string     :first_name_kana, null: false
      t.string     :last_name_kana,  null: false
      t.string     :business_name
      t.string     :zip_code,        null: false
      t.integer    :prefecture_id,   null: false
      t.string     :city,            null: false
      t.string     :addresses,       null: false
      t.string     :building
      t.string     :phone_no,        null: false
      t.references :user,            null: false, foreign_key: true
    end
  end
end
