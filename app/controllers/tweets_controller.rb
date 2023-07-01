class TweetsController < ApplicationController
  # def メソッド名
  # 処理
  # end
  #上記の記述で、処理部分にcopilotから提案が表示される。

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  # def edit
  # end

  # def update
  #   if @tweet.update(tweet_params)
  #     redirect_to tweets_path, notice: "投稿を編集しました"
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    # redirect_to tweets_path, notice:"投稿を削除しました"
    # 提案してくれたけど削除完了画面も実装したいので上記不要
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end

  # def set_tweet
  #   @tweet = Tweet
  # end

end
