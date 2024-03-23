class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!
  before_action :request_post?, only: [:confirm]
  before_action :order_new?, only: [:new]

  def new
    @order = Order.new
    @address = Address.new
  end
  
  def create
    session[:user] = Order.new()

    #支払い方法のセッション情報
    if params[:payment_method] == "0"
      session[:user][:payment_method] = 0
    elsif params[:payment_method] == "1"
      session[:user][:payment_method] = 1
    end
    
    #配送先登録のセッション情報
    if params[:address_number] == "0"
      session[:user][:postal_code] = current_customer.adresses.postal_code
      session[:user][:address] = current_customer.adresses.address
      session[:user][:name] = current_customer.adresses.name
    elsif params[:address_number] == "1"
      session[:user][:postal_code] =  Address.find(params[:address_id]).postal_code
      session[:user][:address] = Address.find(params[:address_id]).address
      session[:user][:name] = Address.find(params[:address_id]).name
    else 
      session[:user][:postal_code] =  params[:postal_code]
      session[:user][:address] = params[:address]
      session[:user][:name] = params[:name]
    end
    redirect_to order_confirm_path
  end
  
  def confirm
    @cart_items = current_customer.cart_items
    @total = 0
  end


  def thanks
    #購入確定後のページ表示
  end

  def index
    @orders = current_customer.orders
  end

  def show

  end

  private
  def order_new?
    redirect_to cart_items_path, notice: "カートに商品を入れてください。" if current_customer.cart_items.blank?
  end

  def request_post?
    redirect_to new_order_path, notice: "もう一度最初から入力してください。" unless request.post?
  end

  def order_params
    params.require(:order).permit(:postal_code, :address, :name, :shipping_cost, :total_payment, :payment_method)
  end

  def address_params
    params.permit(:customer_id, :name, :postal_code, :shipping_address)
  end
end