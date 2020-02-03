class FavoritesController < ApplicationController
  def create
  	favorite = current_end_user.favorites.build(answer_id: params[:answer_id])
    favorite.save
    # redirect_to request.referer ---非同期処理のためのコメントアウト
  end

  def destroy

    favorite = Favorite.find_by(answer_id: params[:answer_id], end_user_id: current_end_user.id)
    favorite.destroy
    # redirect_to request.referer ---非同期処理のためのコメントアウト
  end
end
