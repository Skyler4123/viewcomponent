class AddLineItemDateIdToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :line_items, :line_item_date, null: false, foreign_key: true
  end
end
