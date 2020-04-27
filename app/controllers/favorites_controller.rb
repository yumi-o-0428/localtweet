class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(
      user_id: session[:user_id],
      tweet_id: params[:tweet_id]
    )
    @favorite.save
    flash[:notice] = "「行きたい」に追加しました"
    redirect_to("/tweets/#{params[:tweet_id]}")
  end

  def destroy
    @favorite = Favorite.find_by(
      user_id: session[:user_id],
      tweet_id: params[:tweet_id]
    )
    @favorite.destroy
    flash[:notice] = "「行きたい」から削除しました"
    redirect_to("/tweets/#{params[:tweet_id]}")
  end
end