class ProjectsController < ApplicationController

  def index
    # @をつけた変数はviewの中でそのまま使える
    @projects = Project.all
  end
end
