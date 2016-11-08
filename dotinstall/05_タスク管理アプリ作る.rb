# 05 タスク管理アプリを作る

# 名前：TaskApp

# 構成
# Project (新規作成、削除)
# -Task　 (終わった、終わってない、)


rails new taksapp --skip-bundle
# --skip-bundle 既にbundle installが終わっているのでスキップ、速く終わる
cd taskapp


# ruby racerを有効化
vim Gemfile

# プロジェクトを作る
# - scaffoldで一気に作らず手作業で作る

# まず、modelを作る
# - model名は"単数形"かつ、"頭文字大文字"　という規約
rails generate(g) model Project title(:string) # ()省略形

# DBを作る
rake db:migrate

#
# 06 rails db/rails consoleを使おう
#

# modelが出来ているか確認する
# - 今使っているDBにアクセスできる
rails db

# テーブル確認
sqlite> .schema
select * from projects; # sqlを投げられる
.exit # 抜ける


# modelをインタラクティブにいじることができる
rails console # irb シェルが立ち上がる

p = Project.new(title: "p1") # オブジェクトを作る
p.save # 保存 #pという変数に一旦入れてsave
p # 確認

Project.create(title: "p2") # newとsaveを同時にやる
Project.all # 作ったのが全部確認できる

