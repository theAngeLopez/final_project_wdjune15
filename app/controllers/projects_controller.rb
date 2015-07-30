class ProjectsController < ApplicationController


  def current_user
    User.first
  end
  
  #erase everything above
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @initiative = Initiative.find(params[:initiative_id])
  end

  def create
    @project = Project.new(project_params)
    @project.initiative_id = params[:initiative_id]
    if @project.save
      redirect_to initiative_url(params[:initiative_id])
    else
      render :new
    end
  end

  private 
  def project_params
    params.require(:project).permit(:name, :city, :description, :initiative_id)
  end
end