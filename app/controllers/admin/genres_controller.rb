class Admin::GenresController < ApplicationController
before_action :authenticate_admin!

# ジャンル一覧・ジャンル追加
  def index
    @genres = Genre.all
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = "ジャンルを追加しました。"
      redirect_to admin_genres_path
    else
      flash.now[:error] = "入力内容を確認してください。"
      @genres = Genre.all
      render :index
    end  
  end
  
# ジャンル編集
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:update] = "ジャンルを更新しました。"
      redirect_to admin_genres_path
    else
      flash.now[:notice] = "編集内容を確認してください。"
      render :edit
    end
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end