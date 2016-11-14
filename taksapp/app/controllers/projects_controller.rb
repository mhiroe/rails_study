class ProjectsController < ApplicationController

  # berfore_action アクションの実行前に必ず実行される
  # set_project という名前の関数とする
  # - privateメソッドのなかで作る
  # only:とすると連動するアクションを限定できる

  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    # @をつけた変数はviewの中でそのまま使える
    @projects = Project.all
  end
  def show
    # URIで渡ってきた数字(1,2)は"params"で受取ることができる
    # :id(シンボル)はrake routeで確認された
  end
  def new
    # projectの新規登録画面
    @project = Project.new
  end
  def create
    # フォームから渡されたものを入れる
    # - project_paramsメソッドで得たデータを引数とする
    @project = Project.new(project_params)
    # 保存
    if @project.save
    # リダイレクト(遷移)する　プロジェクト一覧へ
      redirect_to projects_path
    else
      # validationでfalseが返った場合、newのビューに戻す
      render 'new'
    end
  def edit
  end
  def update
    # プロジェクトを開く
    # updateを使用する
    if @project.update(project_params)
      # 上手く言った場合は一覧にリダイレクト
      redirect_to projects_path
    else
      # 編集画面に戻って、エラー表示
      render 'edit'
    end
  end

  def destroy
    # 削除メソッド
    @project.destroy
    redirect_to projects_path
  end

  end
  # フォームから渡ってくるものを別のメソッドの中でフィルタリングしてもってくる
  private
    def project_params
      # projectで渡ってきたものうち、タイトルだけを引っ張ってぅる
      params[:project].permit(:title)
    end
    def set_project
      @project = Project.find(params[:id])
    end

end
