# frozen_string_literal: true

class QuoteComponent < ViewComponent::Base
  def initialize(quote:)
    @quote = quote
  end

end
