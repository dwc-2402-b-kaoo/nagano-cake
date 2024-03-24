class Admin::OrderDetailsController < ApplicationController
  # 管理者側

  def update
    @order_detail = OrderDetail.find(params[:id])
    @order = @order_detail.order
    @order_detail.update(order_detail_params)
    if @order_detail.making_status == "c"
      @order.update(status:2)
    elsif @order.order_details == @order.order_details.where(making_status:"d")
      @order.update(status:3)
    end
    redirect_to admin_order_path(@order.id)
  end

  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end
end
