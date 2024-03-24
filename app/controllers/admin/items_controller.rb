class Admin::ItemsController < ApplicationController
before_action :authenticate_admin!

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
      flash[:notice] = "商品を追加しました。"
      redirect_to admin_items_path
    else
      flash.now[:notice] = "商品の追加に失敗しました。"
      render :new
    end
  end

# 商品詳細画面用
  def show
    @item = Item.find(params[:id])
  end
  
# 商品編集画面用
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      flash[:notice] = "商品を編集しました。"
      redirect_to admin_item_path(@item.id)
    else
      flash.now[:notice] = "商品の編集に失敗しました。"
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_image, :name, :introduction, :genre_id, :price, :is_active)
  end
end