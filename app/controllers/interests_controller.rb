class InterestsController < ApplicationController
  def show
    environment   = Tag.where(name: "environment").first
    water         = Tag.where(name: "water").first
    homelessness  = Tag.where(name: "homelessness").first
    education     = Tag.where(name: "education").first

    @interests    = current_user.interests.where(tag: environment).first

    @env    = current_user.interest_score(environment)
    @wat    = current_user.interest_score(water)
    @hom    = current_user.interest_score(homelessness)
    @edu    = current_user.interest_score(education)

    arr = [
      {
        name: environment.name,
        score: @env
      },
      {
        name: water.name,
        score: @wat
      },
      {
        name: homelessness.name,
        score: @hom
      },
      {
        name: education.name,
        score: @edu
      }
    ]

    render json: arr.to_json
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
  end

  private
  def interest_params
    params.require(:interest).permit(:tag_id, :score, :user_id)
  end
end
