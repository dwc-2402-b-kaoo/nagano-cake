class Admin::ItemsController < ApplicationController

# 商品一覧画面用
   def index
    @items = Item.page(params[:page])
  end

# 商品登録ページ用
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_image, :name, :introduction, :genre_id, :price, :is_active)
  end

end