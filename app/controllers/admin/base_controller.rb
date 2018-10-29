class Admin::BaseController < ApplicationController
  before_action :verify_user

  # layout "admin"

  private

  def verify_user
    unless current_user && current_user.admin?
      redirect_to '/'
    end
  end
end
