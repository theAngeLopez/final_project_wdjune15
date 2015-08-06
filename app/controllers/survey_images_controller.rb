class SurveyImagesController < ApplicationController

  def ask
    @images = SurveyImage.all.sample(2)
    @interest = Interest.new
    @user = current_user
    @interest.user_id = current_user
  end

end
