class Admin::OrdersController < ApplicationController
  # 管理者側

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
    @total = 0
    @shipping_cost = 800
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    if @order.status == "b"
      @order.order_details.update_all(making_status:1)
    end
    redirect_to admin_order_path(@order.id)
  end

  def order_params
    params.require(:order).permit(:status)
  end
end
