class Project < ActiveRecord::Base
   mount_uploader :image, ImageUploader
   
    belongs_to :initiative
    belongs_to :tag
    has_many :interests, through: :tags
    has_many :users, through: :interest

end
