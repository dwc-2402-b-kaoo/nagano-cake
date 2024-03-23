class Admin::GenresController < ApplicationController

# ジャンル一覧・ジャンル追加
  def index
    @genres = Genre.all
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admin_genres_path, notice: "ジャンルを追加しました。"
    else
      flash.now[:danger] = "エラーが発生しました"
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
      redirect_to admin_genres_path, notice: "更新しました。"
    else
      flash.now[:danger] = "エラーが発生しました"
      render :edit
    end
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end