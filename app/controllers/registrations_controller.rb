# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  private

  protected def after_sign_up_path_for(resource)
    super
    root_path
  end
end
