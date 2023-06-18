class TweetsController < ApplicationController
  # def メソッド名
  # 処理
  # end
  #上記の記述で、処理部分にcopilotから提案が表示される。

  def index
    @tweets = Tweet.all
  end
end
