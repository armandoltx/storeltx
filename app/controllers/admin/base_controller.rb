class Admin::BaseController < ApplicationController
  before_action :verify_user

  layout "admin/admin"

  private

  def verify_user
    unless current_user && current_user.admin?
      redirect_to categories_path
    end
  end
end
