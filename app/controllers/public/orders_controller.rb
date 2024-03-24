class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!
  before_action :request_post?, only: [:confirm]
  before_action :order_new?, only: [:new]

  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new
    @cart_items = current_customer.cart_items
    @total = 0
    @shipping_cost = 800

    session[:order] = Order.new()

    #支払い方法のセッション情報
    if params[:order][:payment_method] == Order.payment_methods.key(0)
      session[:order][:payment_method] = 0
      @payment_method = "クレジットカード"
    elsif params[:order][:payment_method] == Order.payment_methods.key(1)
      session[:order][:payment_method] = 1
      @payment_method = "銀行振込"
    end

    #配送先登録のセッション情報
    if params[:order][:address_number] == "0"
      session[:order][:postal_code] = current_customer.postal_code
      session[:order][:address] = current_customer.address
      session[:order][:name] = current_customer.last_name + current_customer.first_name
    elsif params[:order][:address_number] == "1"
      session[:order][:postal_code] =  Address.find(params[:order][:address_id]).postal_code
      session[:order][:address] = Address.find(params[:order][:address_id]).address
      session[:order][:name] = Address.find(params[:order][:address_id]).name
    else
      session[:order][:postal_code] =  params[:order][:postal_code]
      session[:order][:address] = params[:order][:address]
      session[:order][:name] = params[:order][:name]
    end
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save
    @cart_items = current_customer.cart_items
    @cart_items.each do |cart_item|
      order_detail = OrderDetail.new(order_id: @order.id)
      order_detail.item_id = cart_item.item_id
      order_detail.price = cart_item.item.with_tax_price
      order_detail.amount = cart_item.amount
      order_detail.save
    end
		@cart_items.destroy_all
    redirect_to order_thanks_path
  end

  def thanks
    #購入確定後のページ表示
  end

  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])
    @order_details = OrderDetail.where(order_id: @order)
    @total = 0
    @shipping_cost = 800
  end

  private
  def order_new?
    redirect_to cart_items_path, notice: "カートに商品を入れてください。" if current_customer.cart_items.blank?
  end

  def request_post?
    redirect_to new_order_path, notice: "もう一度最初から入力してください。" unless request.post?
  end

  def order_params
    params.require(:order).permit(:customer_id, :postal_code, :address, :name, :shipping_cost, :total_payment, :payment_method)
  end
end