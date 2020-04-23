class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.includes(:tags).order(created_at: :desc)
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    
    if @tweet.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/tweets/index")
    else
      render("tweets/new")
    end
  end

  def edit
    @tweet = Tweet.find_by(id: params[:id])
  end

  def update
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.update(tweet_params)
    if @tweet.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/tweets/index")
    else
      render("tweets/edit")
    end
  end

  def destroy
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/tweets/index")
  end

  def tags_index
    if params[:tag_name]
      @tweets = Tweet.tagged_with("#{params[:tag_name]}")
    end
  end


private
  def tweet_params
    params.require(:tweet).permit(:spa_name,:image,:address,:url,:area,:spring_quality,:tag_list).merge(user_id: session[:user_id])
  end
end
