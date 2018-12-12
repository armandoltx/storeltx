class Admin::SubcategoriesController < Admin::BaseController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]

  def index
    @subcategory ||= Subcategory.all
  end

  def show
    @subcategory ||= Subcategory.find(params[:id])
  end

  def new
    @subcategory ||= Subcategory.new
  end

  def create
    @subcategory ||= Subcategory.new(subcategory_params)

    if @subcategory.save
      flash[:notice] = "Subcategory Successfully #{@subcategory.name} created"
      # redirect_to admin_subcategories_path
      redirect_to [:admin, :subcategories]
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
