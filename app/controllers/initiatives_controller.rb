class InitiativesController < ApplicationController

  def index
    @initiatives = Initiative.all
  end

  def show
    @initiative = Initiative.find(params[:id])
    @projects = Project.where("initiative_id = :ir", {ir: params[:id]})
  end

  def new
    @initiative = Initiative.new
  end

  def create
    @initiative = Initiative.new(initiative_params)
    @initiative.owner = current_user
    if @initiative.save
      redirect_to initiatives_url
    else
      render :new
    end
  end

  private
  def initiative_params
    params.require(:initiative).permit(:name, :description, :image)
  end
end
