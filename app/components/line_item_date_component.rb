# frozen_string_literal: true

class LineItemDateComponent < ViewComponent::Base
  def initialize(line_item_date:, quote:)
    @line_item_date = line_item_date
    @quote = quote
  end

end
