class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = product.all
    render json: @products, status: 200
  end

end


