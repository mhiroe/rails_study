class Project < ActiveRecord::Base

  # 関連モデルの紐付け=association
  # - 複数のtaskが紐付いている 1:多の関係である
  has_many :tasks

  # 入力フォームのバリデーションを設定
  # - タイトルが空だったらNG presence(存在するかどうか)
  # validates :title, presence: true

  # validationエラーメッセージを変更する
  validates :title,
            presence: { message: "入力してください" },
            length: {minimum: 3, message: "３文字以上"}
end
