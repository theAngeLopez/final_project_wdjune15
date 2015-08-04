class Project < ActiveRecord::Base
   mount_uploader :image, ImageUploader

    belongs_to :initiative
    has_many :tags
    has_many :interests, through: :tags
    has_many :users, through: :interest
end
