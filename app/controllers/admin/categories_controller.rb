class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories ||= Category.all
  end

  def show
  end

  def new
    @category ||= Category.new
  end

  def create
    @category ||= Category.new(category_params)

    if @category.save
      flash[:notice] = 'Category Successfully created'
      redirect_to admin_categories_path
    else
      flash[:notice] = 'Category is not created'
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      flash[:notice] = 'Category Successfully created'
      redirect_to categories_path
    else
      flash[:notice] = 'Category is not created'
      render :edit
    end
  end

  def destroy
    @category.destroy
    flash[:notice] = 'Category Deleted'
    redirect_to categories_path
  end

  private

  def set_category
    @category ||= Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
