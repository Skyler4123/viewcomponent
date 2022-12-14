class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.string :name, null: false
      t.text :description
      t.integer :quantity, null: false
      t.decimal :unit_price, null: false, precision: 10, scale: 2

      t.timestamps
    end
  end
end
