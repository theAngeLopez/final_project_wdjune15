class InterestsController < ApplicationController

  def survey

  end

  def new
    @interest = Interest.new
  end

  def create
    # Updating score from survey_image and adding it to interest score
    # Does the user have an interest record with given tag_id
    # If tag_id already exists for user, only update score
    if @interest = current_user.interests.where(:tag_id => interest_params[:tag_id]).first
      @interest.score += interest_params[:score].to_i
    else # If no interest for user with tag_id, create a new record for tag_id
      @interest = Interest.new(interest_params)
      @interest.user = current_user
    end

    @interest.save

    render
  end

  private
  def interest_params
    params.require(:interest).permit(:tag_id, :score, :user_id)
  end
end
