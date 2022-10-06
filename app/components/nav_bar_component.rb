# frozen_string_literal: true

class NavBarComponent < ViewComponent::Base
include ApplicationHelper
  def initialize(session:)
    @session = session
  end

end
