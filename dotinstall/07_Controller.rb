# 07 Controllerを作ってみよう

# ControllerとViewを作る
# - "Project"モデルに対してcontrollerを作る
rails g controller Projects # 必ず複数形になる（規約)

# - app/views/projects が出来ている
# - app/controllers/projects_controller.rb を編集していく

# まず app/config/routes.rb を編集する

# projectsに関するルーティング(URLみたいなもの)を自動生成する
resources :projects

# ルーティングの確認をする
rake routes
# - URI一覧 getの方式でprojectsに行くとアクション一覧を出してくれる
# - 予めアクションを用意してくれるので、その中に書くようにする


# 08 Projectsの一覧を表示する

# routesで確認した projects#index アクションをつくる

# app/controller/project_controller
#  -この中に indexアクションを記述


# 対応するviewを作る
# app/view/projects/index.html.erb を新規作成
# - アクションに対する名前"index"を同じ名前にする(規約)


