Rails.application.routes.draw do
  #ルートパスへのアクセスをtweetsコントローラーのindexアクションに設定
  root to: 'tweets#index'
  #tweetsコントローラーに対して、indexアクションとnewアクション、createアクションのルーティングを設定
  resources :tweets, only: [:index, :new, :create]
end

# resoまで打つと、resources :users の提案
# 既にTweetモデルを作成した後だったがこちらの提案はされない。
# :tweetsまで打つと、onlyオプションの提案はあり。
