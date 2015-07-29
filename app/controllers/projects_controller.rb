class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @project = @project.build
  end

  def new
    @Project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

  private 
  def project_params
    params.require(:project).permit(:name, :city, :description, :initiative_id)
  end
end