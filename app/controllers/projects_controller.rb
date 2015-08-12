class ProjectsController < ApplicationController

  def index
    @all_projects = Project.all
    if params[:tags]
      @projects = []
      params[:tags].keys.each do |t|
        @projects = @projects.concat(Tag.find(t).projects)
      end
    else
      @projects = Project.all
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def suggested
    @user = current_user
    @projects = []
    @user.interests.order('score desc').each do |i|
      @projects = @projects.concat(Tag.find(i.tag_id).projects)
    end
  end

  def show
    @project = Project.find(params[:id])
    @user = current_user
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
    params.require(:project).permit(:name, :city, :description, :initiative_id, :image, :contact_name, :email, :phone_number, :tag_id)
  end
end