class ProductsController < ApplicationController
  #before_filter :authenticate, :only=>[:new, :destroy, :create]

  def index
    @title = "Product Listings"
    @products = Product.paginate(:page=>params[:page])
  end
  def show
    @product = Product.find(params[:id])
  end

  def new
    @title = "Create a new Product" 
    @product = Product.new
  end
  
  def create
    @title = "Save a new Product"
    @product = Product.new(params[:product])
    if @product.save
      flash[:success] = 'Product successfully saved'
      redirect_to @product #user_path(@user)
    else
      flash[:error] = 'ERROR! PRODUCT NOT SAVED'
      @title = "Create new product"
      @user.password = ''
      @user.password_confirmation = ''
      render 'new' #render works for actions #as well as partials 
    end
  end

end




