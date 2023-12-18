class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: :ok
  end

  def create
    product = Product.new(prod_params)
    if product.save
      render json: product, status: :ok
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status: :ok
    else
      render json: { error: "Product not found" }, status: :not_found
    end
  end
  

  private

  def prod_params
    params.require(:product).permit(:name, :brand, :price, :description)
  end
end
