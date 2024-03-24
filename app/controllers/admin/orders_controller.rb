class Admin::OrdersController < ApplicationController
  # 管理者側
  def index
    @orders = Order.page(params[:page])
  end

  def show
    @order = Order.find(params[:id])
  end
  
  def order_params
    params.require(:order_detail).permit(:making_status)
  end
end
