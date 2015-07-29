class Interest < ActiveRecord::Base
  belongs_to :user
  has_many :projects, through tags
  belongs_to tag
end
