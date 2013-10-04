class ProjectsController < ApplicationController
  def index
    # page = params[:page] || 1   <- if- then -> .page(page)
  	@projects = Project.order('projects.created_at DESC').page(params[:page])
  end

  def show
  	@project = Project.find(params[:id])
  	@user = @project.user
  end

  def nav_state
  	@nav = :projects
  end
end


