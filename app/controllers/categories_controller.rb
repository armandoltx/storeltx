class CategoriesController < ApplicationController
  before_action: :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories ||= Category.all
  end

  def show
    @category ||= Category.find(params[:id])
  end

  def new
    @category ||= Category.new
  end

  def create
    @category ||= Category.new(category_params)

    if@category.save
      flash[:message] = "Successfully Created #{@category.name}"
      redirect_to [:admin, @category]
    else
      flash[:message] = "Something went wrong and the Category was not created"
      render action: :new
    end
  end

  def edit
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description)
    
  end
end