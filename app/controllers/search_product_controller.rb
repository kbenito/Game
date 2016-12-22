class SearchProductController < ApplicationController
  before_action :authenticate_user!
  before_action :setup_cart

  def index
    query = params[:search_product_field]
    @products = Product.where('name ilike ?', "%#{query}%").ordered_by_profit
    respond_to :js
  end
end
