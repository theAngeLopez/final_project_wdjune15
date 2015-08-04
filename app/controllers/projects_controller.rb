class ProjectsController < ApplicationController

  def index
    all_projects = Project.all
    if params[:tag_id]
      @tag = Tag.find_by_id(params[:tag_id])
      @projects = Project.search_by_tag(@tag.id)
    end
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
    params.require(:project).permit(:name, :city, :description, :initiative_id, :image, :contact_name, :email, :phone_number)
  end
end