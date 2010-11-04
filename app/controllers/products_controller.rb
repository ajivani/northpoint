class ProductsController < ApplicationController
  #before_filter :authenticate, :only=>[:new, :destroy, :create]
  USERNAME="200120482"
  PASSWORD="29156"
  
  if RAILS_ENV['production']
    before_filter :authenticate_test, :only=>[:create,:destroy,:edit,:new]
  end
  


  def index
    @title = "Product Listings"
    @products = Product.paginate(:page=>params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    product = Product.find(params[:id])
    if product.destroy
      flash[:success] = "Product destroyed"
      redirect_to products_path
    else
      flash[:error]="Cannot delete product, error occured"
      redirect_to products_path
    end
  end

#products/new
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
      @title = "Create new product"
      render 'new' #render works for actions #as well as partials 
    end
  end

#products/1/edit
  def edit
    @title = "Edit a products details"
    @product = Product.find(params[:id])
  end
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:success] = 'Product successfully updated'
      redirect_to product_path(@product)
    else
      @title = "Edit Product"
      render 'edit'
    end
  end

  private

  def authenticate_test
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name==USERNAME && password=PASSWORD
    end
  end

end
