class SurveyImagesController < ApplicationController
  def index

    @images = SurveyImage.all.sample(2)
    @interest = Interest.new
    @user = current_user
    @interest.user_id = current_user
  end


  def ask
    SurveyImage.all.pluck(:id).sample
  end

end
