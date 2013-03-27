class ProductsController < ApplicationController

  # GET product
  def index
    @products = Product.all
  end

  # GET product/1
  def show
    @product = Product.find(params[:id])
  end

  # GET product/new
  def new
    @product = Product.new
  end

  # POST product
  def create
    @product = Product.new(params[:product])
    if @product.save
      # redirect (move the browser) to /product/#{@product.id}
      redirect_to @product, notice: 'Product posted successfully!'
    else
      render action: :new
    end
  end

  # GET product/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # GET product/1
  def update
    @product = Product.find(params[:id])
  end

  def destroy
  end


end
