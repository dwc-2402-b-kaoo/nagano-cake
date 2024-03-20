class Public::ItemsController < ApplicationController
  
  def index
    @items_all = Item.page(params[:page]).per(8)
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

end
