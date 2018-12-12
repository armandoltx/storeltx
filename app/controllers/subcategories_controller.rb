class SubcategoriesController < ApplicationController

  def index
    @subcategory ||= Subcategory.all
  end

  def show
    subcategory= Subcategory.find(params[:id])
  end
end
