class ProjectsController < ApplicationController
<<<<<<< HEAD
  
=======

>>>>>>> 1e6675743897b366555a16a68915b005fa728750
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
<<<<<<< HEAD
    @project = @project.build
  end

  def new
    @Project = Project.new
=======
  end

  def new
    @project = Project.new
    @initiative = Initiative.find(params[:initiative_id])
>>>>>>> 1e6675743897b366555a16a68915b005fa728750
  end

  def create
    @project = Project.new(project_params)
<<<<<<< HEAD
    if @project.save
      redirect_to projects_url
=======
    @project.initiative_id = params[:initiative_id]
    if @project.save
      redirect_to initiative_url(params[:initiative_id])
>>>>>>> 1e6675743897b366555a16a68915b005fa728750
    else
      render :new
    end
  end

  private 
  def project_params
    params.require(:project).permit(:name, :city, :description, :initiative_id)
  end
end