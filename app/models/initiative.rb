class Initiative < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :owner, class_name: "User"
  has_many :projects
end
