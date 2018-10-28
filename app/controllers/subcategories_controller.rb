class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only [:show, :edit, :update, :destroy]

  def index
    @sucategory ||= Subcategory.all
  end

  def show
  end

  def new
    @sucategory ||= Subcategory.new
  end

  def create
    @sucategory ||= Subcategory.new(subcategory_params)

    if @subcategory.save
      flash[:notice]
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_subcategory
    @sucategory ||= Subcategory.find(params[:id])
  end

  def subcategory_params
    params.require(:subcategory).permit(:name, :description)
  end
end
