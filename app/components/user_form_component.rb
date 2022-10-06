# frozen_string_literal: true

class UserFormComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

end
