# frozen_string_literal: true

class QuoteFormComponent < ViewComponent::Base
  def initialize(quote:)
    @quote = quote
  end

end
