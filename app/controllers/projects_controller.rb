class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  	@user = @project.user
  end

end
