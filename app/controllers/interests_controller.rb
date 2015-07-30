class InterestsController < ApplicationController

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    @interest.user_id = current_user
    @interest.save
  end

  def edit

  end

  def update

  end

  private
  def interest_params
    params.require(:interest).permit(:tag_id, :score)
  end
end
