class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :user,            null: false, foreign_key: true
      t.references :crop,            null: false, foreign_key: true
      t.references :address,         null: false, foreign_key: true
      t.integer :quantity,      null: false
      t.timestamps
    end
  end
end
