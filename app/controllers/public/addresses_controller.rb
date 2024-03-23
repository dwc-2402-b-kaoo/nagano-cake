class Public::AddressesController < ApplicationController

  def index
    @address = Address.new # 新しいアドレスを作成
    @addresses = Address.all # 全てのアドレスを取得
  end

  def create
    @address = Address.new(address_params) # フォームからのデータで新しいアドレスを作成
    @address.customer_id = current_customer.id # 現在の顧客のIDを設定
    if @address.save # アドレスが保存された場合
      redirect_to addresses_path, notice: "アドレスが作成されました" # アドレス一覧ページにリダイレクト
    else
      @address = Address.new # 新しいアドレスを作成
      render :index # indexページを再表示
    end
  end

  def edit
    @address = Address.find(params[:id]) # 特定のアドレスを取得して編集
  end

  def update
    @address = Address.find(params[:id]) # 特定のアドレスを取得して更新
    if @address.update(address_params) # アドレスが更新された場合
      redirect_to addresses_path, notice: "アドレスが更新されました" # アドレス一覧ページにリダイレクト
    else
      render :edit # 編集ページを再表示
    end
  end

  def destroy
    @address = Address.find(params[:id]) # 特定のアドレスを取得して削除
    @address.destroy # アドレスを削除
    redirect_to addresses_path, notice: "アドレスが削除されました" # アドレス一覧ページにリダイレクト
  end

  private

  def address_params
    params.require(:address).permit(:customer_id, :postal_code, :address, :name) # フォームからの許可されたパラメーターを返す
  end
end