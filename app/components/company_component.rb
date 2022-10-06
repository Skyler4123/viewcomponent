# frozen_string_literal: true

class CompanyComponent < ViewComponent::Base
  def initialize(company:)
    @company = company
  end

end
