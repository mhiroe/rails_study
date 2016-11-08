# 初めてのrails

# railsを使ってアプリケーションを作る
# 必要なディレクトリが作られる
# rails new "アプリケーション名"
rails new myapp

# 主に使うのは app db config

# サーバを立ち上げる
rails server # OR rails s

# - webrickというサーバがポート3000でListen
# http://dev.dotinstall.com:3000 # hotsで指定
# -> yeah! you're on rails!

# javascript の ランタイムがたりない rubyracer
# -直下のGemfileの必要なgemファイルのコメントを外す
vim Gemfile
--
bundler install


# 04 scafoldを使ってみよう

# scafold
# - シンプルな枠組みを備えたアプリケーションを簡単に生成する

# cd アプリディレクトリー
# rails generate scaffold [名前] 管理したいもの：型 ..
rails generate scaffold User name:string score:integer

# DBを操作する設定ファイル createDB,Tableする
# db/migrate/日付.rb

# 設定反映
rake db:migrate

# 確認
rails s

http://dev.dotinstall.com:3000/users

# ユーザの管理画面ができてる！
# 名前、スコアで新規作成
