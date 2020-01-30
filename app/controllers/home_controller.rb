class HomeController < ApplicationController
  def show
    render json: { message: "Welcome to Assignment Api App!!" }
  end
end
