class AddDiscontinuedToCrops < ActiveRecord::Migration[6.0]
  def change
    add_column :crops, :discontinued, :boolean, default: false, null: false
  end
end
