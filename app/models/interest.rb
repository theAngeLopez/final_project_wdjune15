class Interest < ActiveRecord::Base
  belongs_to :user
  has_many :projects, through :tag
  belongs_to :tag
end
