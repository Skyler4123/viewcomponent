class AddQuoteIdToLineItemDates < ActiveRecord::Migration[7.0]
  def change
    add_reference :line_item_dates, :quote, null: false, foreign_key: true
  end
end
