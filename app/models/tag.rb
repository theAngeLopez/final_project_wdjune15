class Tag < ActiveRecord::Base

  belongs_to :projects

  def new
    @tag = Tag.new
  end

end
