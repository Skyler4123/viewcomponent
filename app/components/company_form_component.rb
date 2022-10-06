# frozen_string_literal: true

class CompanyFormComponent < ViewComponent::Base
  def initialize(company:)
    @company = company
  end

end
