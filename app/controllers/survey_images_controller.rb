class SurveyImagesController < ApplicationController
  def index
    @images = SurveyImage.all
    @interest = Interest.new
  end
  def show
    @image = SurveyImage.find(params[:id])
  end

  def ask
    @img_1 = SurveyImage.find(rand(26...35))
    @img_2 = SurveyImage.find(rand(26...35))


  end

  private
  def method_name
  end
end
