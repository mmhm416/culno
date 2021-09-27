class AddAmountToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :amount, :integer, null: false
  end
end
